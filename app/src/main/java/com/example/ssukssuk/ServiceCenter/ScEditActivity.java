package com.example.ssukssuk.ServiceCenter;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;


import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;


import com.example.ssukssuk.Board.BoardVO;
import com.example.ssukssuk.MainActivity;
import com.example.ssukssuk.R;
import com.example.ssukssuk.ServiceCenter.VO.ScVO;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.firebase.database.ChildEventListener;
import com.google.firebase.database.DataSnapshot;
import com.google.firebase.database.DatabaseError;
import com.google.firebase.database.DatabaseReference;
import com.google.firebase.database.FirebaseDatabase;

import java.util.HashMap;
import java.util.Map;


public class ScEditActivity extends AppCompatActivity {

    EditText edt_title, edt_content;
    Button btn_edit;


    FirebaseDatabase database = FirebaseDatabase.getInstance();
    DatabaseReference myRef = database.getReference("ServiceCenter");
    DatabaseReference myRef1 = database.getReference("Sc_answer");


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_sc_edit);

        edt_content = findViewById(R.id.edt_SEA_Content);
        edt_title = findViewById(R.id.edt_SEA_Title);
        btn_edit = findViewById(R.id.btn_SEA_Write);

        Intent intent = getIntent();
        String title = intent.getStringExtra("ScTitle1");
        String writer = ScEditActivity.this.getSharedPreferences("mySPF", Context.MODE_PRIVATE).
                getString("user_login_id1", null);



        myRef.addChildEventListener(new ChildEventListener() {
            @Override
            public void onChildAdded(@NonNull DataSnapshot snapshot, @Nullable String previousChildName) {

                ScVO vo = snapshot.getValue(ScVO.class);

                //???????????? ????????? ?????? ??????????????? ?????? ?????? ?????? ????????? ?????? ?????? ?????????
                if (writer.equals(vo.getWriter())&& title.equals(vo.getTitle())
                ){

                    //edt_Title??? title??????, edt_Post??? post?????? ????????????
                    edt_title.setText(vo.getTitle());
                    edt_content.setText(vo.getContent());

                    //???????????? ????????? ?????????
                    btn_edit.setOnClickListener(new View.OnClickListener() {
                        @Override
                        public void onClick(View view) {
                            //?????? if?????? ???????????? ????????? ????????????
                            String a = snapshot.getKey();

                            myRef1.get().addOnCompleteListener(new OnCompleteListener<DataSnapshot>() {
                                @Override

                                public void onComplete(@NonNull Task<DataSnapshot> task) {

                                    if (!task.isSuccessful()) {
                                        Log.e("firebase", "Error getting data", task.getException());
                                    } else {
                                        Log.d("firebase", String.valueOf(task.getResult().getValue()));
                                        DataSnapshot snapshot = task.getResult();
                                        for (DataSnapshot data1 : snapshot.getChildren()) {

                                            ScVO vo = data1.getValue(ScVO.class);

                                            if (title.equals(vo.getTitle())) {
                                                String b= data1.getKey();
                                                DatabaseReference myRef3 = myRef1.child(b);
                                                //???????????? ?????? ?????? ??????
                                                String Edit_title = edt_title.getText().toString();
                                                //?????? ????????? ?????? ???????????? ??????
                                                Map<String, Object> updateMap = new HashMap<>();
                                                updateMap.put("title",Edit_title);
                                                myRef3.updateChildren(updateMap);
                                            }
                                        }
                                    }
                                }
                            });
                            //myRef2??? ????????? ????????? a??? ?????? ???????????????
                            DatabaseReference myRef2 = myRef.child(a);
                            //???????????? ?????? ?????? ??????
                            String Edit_content = edt_content.getText().toString();
                            String Edit_title = edt_title.getText().toString();
                            //?????? ????????? ?????? ???????????? ??????
                            Map<String, Object> updateMap = new HashMap<>();
                            updateMap.put("title",Edit_title);
                            updateMap.put("content",Edit_content);
                            myRef2.updateChildren(updateMap);
                            //????????? ????????? ???????????? Log.d??????
//                            .addOnCompleteListener(task ->
//                                    Log.d("dda","update title:"+task.isSuccessful()));

                            startActivity(new Intent(ScEditActivity.this,MainActivity.class));
                        }
                    });

                }


            }


            @Override
            public void onChildChanged(@NonNull DataSnapshot snapshot, @Nullable String previousChildName) {


            }

            @Override
            public void onChildRemoved(@NonNull DataSnapshot snapshot) {

            }

            @Override
            public void onChildMoved(@NonNull DataSnapshot snapshot, @Nullable String previousChildName) {

            }

            @Override
            public void onCancelled(@NonNull DatabaseError error) {

            }
        });


    }
}