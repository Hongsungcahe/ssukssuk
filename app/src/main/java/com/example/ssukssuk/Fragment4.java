package com.example.ssukssuk;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;

import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;

import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.ListView;
import android.widget.TextView;

import com.example.ssukssuk.ServiceCenter.VO.ScAdapter;
import com.example.ssukssuk.ServiceCenter.ScListSelectActivity;
import com.example.ssukssuk.ServiceCenter.VO.ScVO;
import com.example.ssukssuk.ServiceCenter.ScWriteActivity;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.firebase.database.DataSnapshot;
import com.google.firebase.database.DatabaseReference;
import com.google.firebase.database.FirebaseDatabase;

import java.util.ArrayList;

public class Fragment4 extends Fragment {

    ListView lv;
    ScAdapter adapter;
    ArrayList<ScVO> list;
    Button btn_write;
    TextView number;


    FirebaseDatabase database = FirebaseDatabase.getInstance();
    DatabaseReference myRef = database.getReference("ServiceCenter");



    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.fragment_4, container, false);

        btn_write = view.findViewById(R.id.btn_S_Write);
        lv = view.findViewById(R.id.list_Sc);
        list = new ArrayList<ScVO>();
        number = view.findViewById(R.id.sclist_number);
        String writer = getActivity().getSharedPreferences("mySPF", Context.MODE_PRIVATE).
                getString("user_login_id1", null);

        myRef.get().addOnCompleteListener(new OnCompleteListener<DataSnapshot>() {
            @Override
            public void onComplete(@NonNull Task<DataSnapshot> task) {

                int a = 0;

                if (!task.isSuccessful()) {
                    Log.e("firebase", "Error getting data", task.getException());
                } else {
                    Log.d("firebase", String.valueOf(task.getResult().getValue()));
                    DataSnapshot snapshot = task.getResult();

                    for (DataSnapshot data : snapshot.getChildren()) {

                        ScVO vo = data.getValue(ScVO.class);
                        //??????????????? ????????? ????????????


                        //???????????? ???????????? ?????? ???????????? ?????? ?????????
                        if (writer.equals(vo.getWriter())||writer.equals("admin")) {

                            //????????? ?????? ?????????
                            a++;
                            String num = String.valueOf(a);

                            String title = vo.getTitle();
                            String date = vo.getDate();
                            //????????????????????? ?????? ???????????? ???????????? ????????????
                            list.add(new ScVO(num, title, date));
                            adapter.notifyDataSetChanged();
                        }
                    }

                }
            }
        });


        adapter = new ScAdapter(
                getActivity(),
                R.layout.sc_list,
                list
        );

        lv.setAdapter(adapter);

        lv.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long l) {

                String title = list.get(i).getTitle();
//                String writer = list.get(i).getWriter();
                String indate = list.get(i).getDate();

                //?????? ???????????? ??????,????????????,????????? ????????????
                SharedPreferences spf = getActivity().
                        getSharedPreferences("mySPF", Context.MODE_PRIVATE);
                SharedPreferences.Editor editor = spf.edit();
                editor.putString("Sctitle", title);
                editor.putString("Scindate",indate);

                editor.commit();
                //??????
                Intent intent = new Intent(getActivity(), ScListSelectActivity.class);
                startActivity(intent);
            }
        });

        //??? ?????? ????????? ??????
        btn_write.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                startActivity(new Intent(getActivity(), ScWriteActivity.class));
            }
        });

        return view;

    }
}