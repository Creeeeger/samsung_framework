package com.android.settingslib.inputmethod;

import android.content.ContentResolver;
import android.content.Context;
import android.util.SparseArray;
import android.view.inputmethod.InputMethodManager;
import java.util.ArrayList;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class InputMethodSettingValuesWrapper {
    public static final Object sInstanceMapLock = new Object();
    public static final SparseArray sInstanceMap = new SparseArray();

    private InputMethodSettingValuesWrapper(Context context) {
        ArrayList arrayList = new ArrayList();
        ContentResolver contentResolver = context.getContentResolver();
        InputMethodManager inputMethodManager = (InputMethodManager) context.getSystemService(InputMethodManager.class);
        arrayList.clear();
        arrayList.addAll(inputMethodManager.getInputMethodListAsUser(contentResolver.getUserId(), 1));
    }

    public static void getInstance(Context context) {
        int userId = context.getUserId();
        synchronized (sInstanceMapLock) {
            SparseArray sparseArray = sInstanceMap;
            if (sparseArray.size() == 0) {
                sparseArray.put(userId, new InputMethodSettingValuesWrapper(context));
            } else if (sparseArray.indexOfKey(userId) >= 0) {
            } else {
                sparseArray.put(context.getUserId(), new InputMethodSettingValuesWrapper(context));
            }
        }
    }
}
