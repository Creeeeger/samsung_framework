package com.android.wm.shell.draganddrop;

import android.content.ClipData;
import com.android.wm.shell.draganddrop.AppResultFactory;
import java.util.Optional;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public interface Resolver {
    Optional makeFrom(ClipData clipData, int i, AppResultFactory.ResultExtra resultExtra);
}
