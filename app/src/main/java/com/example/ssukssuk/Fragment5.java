package com.example.ssukssuk;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;

import androidx.fragment.app.Fragment;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;

public class Fragment5 extends Fragment {


    Button btnLogout,btnEdit,btnRegister,btnMainSet,btnback;


    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.fragment_5, container, false);
        // Inflate the layout for this fragment

        btnEdit = view.findViewById(R.id.btn_S_Edit);
        btnRegister = view.findViewById(R.id.btn_S_Register);
        btnMainSet = view.findViewById(R.id.btn_S_MainSet);
        btnLogout = view.findViewById(R.id.btn_S_Logout);
        btnback = view.findViewById(R.id.btn_S_Back);

        //개인 정보 수정 페이지
        btnEdit.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent intent = new Intent(getActivity(),TestSuccess.class);
                startActivity(intent);
            }
        });

        //화분 등록 및 삭제 페이지
        btnRegister.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent intent = new Intent(getActivity(),TestSuccess.class);
                startActivity(intent);
            }
        });

        //메인 화분 등록 페이지
        btnMainSet.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent intent = new Intent(getActivity(),TestSuccess.class);
                startActivity(intent);
            }
        });

        btnLogout.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                SharedPreferences spf = getActivity().
                        getSharedPreferences("mySPF", Context.MODE_PRIVATE);

                spf.edit().remove("user_login_id").commit();
                spf.edit().remove("user_login_pw").commit();

                Intent intent = new Intent(getActivity(),LoginActivity.class);
                startActivity(intent);

            }
        });

        return view;
    }
}