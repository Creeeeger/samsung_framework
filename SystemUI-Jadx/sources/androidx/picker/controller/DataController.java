package androidx.picker.controller;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public abstract class DataController {
    public final List currentList;
    public final List dataList;
    public final List listeners;

    public DataController() {
        ArrayList arrayList = new ArrayList();
        this.dataList = arrayList;
        this.currentList = Collections.unmodifiableList(arrayList);
        this.listeners = new ArrayList();
    }
}
