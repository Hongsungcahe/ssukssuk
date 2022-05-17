package com.example.ssukssuk;

import androidx.annotation.NonNull;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Context;
import android.content.Intent;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;

import android.net.Uri;

import android.os.Bundle;

import android.provider.MediaStore;

import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.Toast;

import com.bumptech.glide.Glide;
import com.example.ssukssuk.Board.BoardVO;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.firebase.database.DatabaseReference;
import com.google.firebase.database.FirebaseDatabase;
import com.google.firebase.storage.FirebaseStorage;
import com.google.firebase.storage.StorageReference;
import com.google.firebase.storage.UploadTask;

import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.Calendar;

public class Diary_write extends AppCompatActivity {
    Button btn_photo;
    private final int GALLER_CODE = 10;
    ImageView photo;
   private FirebaseStorage storage;
    EditText title;
    FirebaseDatabase database = FirebaseDatabase.getInstance();
    DatabaseReference myRef = database.getReference("Diary");
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_diary_write);

        findViewById(R.id.imageView3).setOnClickListener(onClickListener);
        btn_photo = findViewById(R.id.button5);
        storage = FirebaseStorage.getInstance();
        btn_photo.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Calendar cal = Calendar.getInstance();
                SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
                String indate = sdf.format(cal.getTime());

                EditText content = findViewById(R.id.editTextTextMultiLine);
//                SharedPreferences spf = Board_answer.this.
//                        getSharedPreferences("mySPF", Context.MODE_PRIVATE);
//                title = intent.getStringExtra("title");
                title = findViewById(R.id.edt_title_diary);

                String writer = Diary_write.this.getSharedPreferences("mySPF", Context.MODE_PRIVATE).
                        getString("user_login_id1", null);

                myRef.push().setValue(new BoardVO(
                        indate,
                        content.getText().toString(),
                        writer,
                        title.getText().toString()
                ));
            }
        });
    }
    View.OnClickListener onClickListener = new View.OnClickListener() {
        @Override
        public void onClick(View view) {
            switch (view.getId()){
                case R.id.imageView3 :
                    loadAlbum();
                    break;
            }
        }
    };
    private void loadAlbum() {
        Intent intent = new Intent(Intent.ACTION_PICK);
        intent.setType(MediaStore.Images.Media.CONTENT_TYPE);
        startActivityForResult(intent,GALLER_CODE);
    }
    @Override
    protected void onActivityResult(int requestCode,final int resultCode, final Intent data){
        super.onActivityResult(requestCode, resultCode,data);
        if(requestCode == GALLER_CODE) {
            Calendar cal = Calendar.getInstance();
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            String indate = sdf.format(cal.getTime());
            Uri file = data.getData();
            StorageReference storageRef = storage.getReference();
            StorageReference riverRef = storageRef.child("images/"+indate+".jpg");
            UploadTask uploadTask = riverRef.putFile(file);
            try {
                InputStream in = getContentResolver().openInputStream(data.getData());
                Bitmap img = BitmapFactory.decodeStream(in);
                in.close();
                photo.setImageBitmap(img);
            } catch (Exception e) {
                e.printStackTrace();
            }
            uploadTask.addOnFailureListener(new OnFailureListener() {
                @Override
                public void onFailure(@NonNull Exception exception) {
                    Toast.makeText(Diary_write.this, "사진이 정상적으로 업로드 되지 않았습니다.", Toast.LENGTH_SHORT).show();

                }
            }).addOnSuccessListener(new OnSuccessListener<UploadTask.TaskSnapshot>() {
                @Override
                public void onSuccess(UploadTask.TaskSnapshot taskSnapshot) {
                    Toast.makeText(Diary_write.this, "사진이 정상적으로 업로드 되었습니다.", Toast.LENGTH_SHORT).show();
                    ImageView img_test = findViewById(R.id.imageView3);
                    Calendar cal = Calendar.getInstance();
                    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
                    String indate = sdf.format(cal.getTime());
                    FirebaseStorage storage = FirebaseStorage.getInstance("gs://ssukssuk-af5d6.appspot.com/");
                    StorageReference storageRef = storage.getReference();
                    storageRef.child("images/"+ indate + ".jpg").getDownloadUrl().addOnSuccessListener(new OnSuccessListener<Uri>() {
                        @Override
                        public void onSuccess(Uri uri) {
                            //이미지 로드 성공시
                            Toast.makeText(getApplicationContext(), "성공", Toast.LENGTH_SHORT).show();
                            Glide.with(getApplicationContext())
                                    .load(uri)
                                    .into(img_test);

                        }
                    }).addOnFailureListener(new OnFailureListener() {
                        @Override
                        public void onFailure(@NonNull Exception exception) {
                            //이미지 로드 실패시
                            Toast.makeText(getApplicationContext(), "실패", Toast.LENGTH_SHORT).show();
                        }
                    });
                }
            });
        }
    }
}