package com.android.wm.shell.draganddrop;

import android.content.Context;
import com.android.wm.shell.draganddrop.ExecutableAppHolder;
import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class AppResultFactory {
    public final ArrayList mResolvers;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class ResultExtra {
        public CharSequence mAppLabel;
        public boolean mNonResizeableAppOnly;
    }

    public AppResultFactory(Context context, ExecutableAppHolder.MultiInstanceBlockList multiInstanceBlockList, ExecutableAppHolder.MultiInstanceAllowList multiInstanceAllowList) {
        ArrayList arrayList = new ArrayList();
        this.mResolvers = arrayList;
        arrayList.add(new IntentResolver(context, multiInstanceBlockList));
        arrayList.add(new UriResolver(context, multiInstanceBlockList));
        arrayList.add(new TextClassifierResolver(context, multiInstanceBlockList));
        arrayList.add(new PlainTextResolver(context, multiInstanceBlockList));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((BaseResolver) ((Resolver) it.next())).mMultiInstanceAllowList = multiInstanceAllowList;
        }
    }
}
