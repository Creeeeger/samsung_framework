package com.android.wm.shell.draganddrop;

import android.content.Context;
import android.graphics.Rect;
import com.android.wm.shell.splitscreen.SplitScreenController;
import java.util.ArrayList;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public abstract class SplitDropTargetProvider {
    public final Context mContext;
    public final DragAndDropPolicy mPolicy;
    public final SplitScreenController mSplitScreen;

    public SplitDropTargetProvider(DragAndDropPolicy dragAndDropPolicy, Context context) {
        this.mPolicy = dragAndDropPolicy;
        this.mSplitScreen = dragAndDropPolicy.mSplitScreen;
        this.mContext = context;
    }

    public abstract void addSplitTargets(Rect rect, boolean z, boolean z2, float f, ArrayList arrayList);
}
