package com.samsung.android.globalactions.util;

import android.content.Context;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes5.dex */
public class ContentObserverWrapper {
    private final Context mContext;
    private ArrayList<ContentObserver> mObserverList = new ArrayList<>();

    public ContentObserverWrapper(Context context) {
        this.mContext = context;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.samsung.android.globalactions.util.ContentObserverWrapper$1 */
    /* loaded from: classes5.dex */
    public class AnonymousClass1 extends ContentObserver {
        final /* synthetic */ Runnable val$runnable;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(Handler handler, Runnable runnable) {
            super(handler);
            runnable = runnable;
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean selfChange) {
            runnable.run();
        }
    }

    public void registerObserver(Uri uri, Runnable runnable) {
        ContentObserver contentObserver = new ContentObserver(new Handler()) { // from class: com.samsung.android.globalactions.util.ContentObserverWrapper.1
            final /* synthetic */ Runnable val$runnable;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass1(Handler handler, Runnable runnable2) {
                super(handler);
                runnable = runnable2;
            }

            @Override // android.database.ContentObserver
            public void onChange(boolean selfChange) {
                runnable.run();
            }
        };
        this.mContext.getContentResolver().registerContentObserver(uri, false, contentObserver);
        this.mObserverList.add(contentObserver);
    }

    public void unregisterObservers() {
        Iterator<ContentObserver> it = this.mObserverList.iterator();
        while (it.hasNext()) {
            ContentObserver contentObserver = it.next();
            this.mContext.getContentResolver().unregisterContentObserver(contentObserver);
        }
    }
}
