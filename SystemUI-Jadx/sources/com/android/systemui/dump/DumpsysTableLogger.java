package com.android.systemui.dump;

import com.android.keyguard.FaceWakeUpTriggersConfig$$ExternalSyntheticOutline0;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt___CollectionsKt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class DumpsysTableLogger {
    public final List columns;
    public final List rows;
    public final String sectionName;

    public DumpsysTableLogger(String str, List<String> list, List<? extends List<String>> list2) {
        this.sectionName = str;
        this.columns = list;
        this.rows = list2;
    }

    public final void printTableData(PrintWriter printWriter) {
        boolean z;
        StringBuilder sb = new StringBuilder("SystemUI TableSection START: ");
        String str = this.sectionName;
        sb.append(str);
        printWriter.println(sb.toString());
        printWriter.println("version 1");
        printWriter.println(CollectionsKt___CollectionsKt.joinToString$default(this.columns, "|", null, null, null, 62));
        int size = this.columns.size();
        ArrayList arrayList = new ArrayList();
        for (Object obj : this.rows) {
            if (((List) obj).size() == size) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                arrayList.add(obj);
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            printWriter.println(CollectionsKt___CollectionsKt.joinToString$default((List) it.next(), "|", null, null, null, 62));
        }
        FaceWakeUpTriggersConfig$$ExternalSyntheticOutline0.m("SystemUI TableSection END: ", str, printWriter);
    }
}
