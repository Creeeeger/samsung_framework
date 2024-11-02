package com.android.systemui.qs.pipeline.data.repository;

import android.content.ComponentName;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public interface CustomTileAddedRepository {
    boolean isTileAdded(int i, ComponentName componentName);

    void setTileAdded(ComponentName componentName, boolean z, int i);
}
