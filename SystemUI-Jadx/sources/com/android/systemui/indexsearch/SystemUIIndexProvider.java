package com.android.systemui.indexsearch;

import android.content.Intent;
import android.os.AsyncTask;
import com.android.systemui.Dependency;
import com.samsung.android.lib.galaxyfinder.search.api.SamsungSearchProvider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public class SystemUIIndexProvider extends SamsungSearchProvider {
    public SystemUIIndexMediator mIndexMediator;
    public SearchAsyncTask mSearchAsyncTask;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class SearchAsyncTask extends AsyncTask {
        public /* synthetic */ SearchAsyncTask(SystemUIIndexProvider systemUIIndexProvider, int i) {
            this();
        }

        /* JADX WARN: Code restructure failed: missing block: B:5:0x001b, code lost:
        
            if (android.text.TextUtils.isEmpty(r3) != false) goto L8;
         */
        @Override // android.os.AsyncTask
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object doInBackground(java.lang.Object[] r3) {
            /*
                r2 = this;
                java.lang.String[] r3 = (java.lang.String[]) r3
                r0 = 0
                r3 = r3[r0]
                com.android.systemui.indexsearch.SystemUIIndexProvider r2 = com.android.systemui.indexsearch.SystemUIIndexProvider.this
                com.android.systemui.indexsearch.SystemUIIndexMediator r2 = r2.mIndexMediator
                r0 = 0
                if (r2 == 0) goto L3d
                if (r3 != 0) goto Lf
                goto L1d
            Lf:
                java.lang.String r3 = r3.trim()
                java.lang.String r3 = r3.toLowerCase()
                boolean r1 = android.text.TextUtils.isEmpty(r3)
                if (r1 == 0) goto L1e
            L1d:
                r3 = r0
            L1e:
                if (r3 != 0) goto L21
                goto L3d
            L21:
                r2.clearTileSearchResults()     // Catch: java.lang.Exception -> L39
                java.util.ArrayList r1 = r2.mTileSearchables     // Catch: java.lang.Exception -> L39
                monitor-enter(r1)     // Catch: java.lang.Exception -> L39
                r2.updateTileSearchResults(r3)     // Catch: java.lang.Throwable -> L36
                monitor-exit(r1)     // Catch: java.lang.Throwable -> L36
                java.util.ArrayList r1 = r2.mTileSearchResults     // Catch: java.lang.Exception -> L39
                int r1 = r1.size()     // Catch: java.lang.Exception -> L39
                com.samsung.android.lib.galaxyfinder.search.api.search.SimpleSearchResult r0 = r2.getSimpleSearchResult(r1, r3)     // Catch: java.lang.Exception -> L39
                goto L3d
            L36:
                r2 = move-exception
                monitor-exit(r1)     // Catch: java.lang.Throwable -> L36
                throw r2     // Catch: java.lang.Exception -> L39
            L39:
                r2 = move-exception
                r2.printStackTrace()
            L3d:
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.indexsearch.SystemUIIndexProvider.SearchAsyncTask.doInBackground(java.lang.Object[]):java.lang.Object");
        }

        @Override // android.os.AsyncTask
        public final void onPreExecute() {
            SystemUIIndexProvider.this.mIndexMediator = (SystemUIIndexMediator) Dependency.get(SystemUIIndexMediator.class);
        }

        private SearchAsyncTask() {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x001e  */
    @Override // com.samsung.android.lib.galaxyfinder.search.api.SamsungSearchProvider
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.samsung.android.lib.galaxyfinder.search.api.search.SearchResult getSearchResult(java.lang.String r3, int r4, android.os.CancellationSignal r5) {
        /*
            r2 = this;
            java.lang.Class<com.android.systemui.util.DesktopManager> r4 = com.android.systemui.util.DesktopManager.class
            java.lang.Object r4 = com.android.systemui.Dependency.get(r4)
            com.android.systemui.util.DesktopManager r4 = (com.android.systemui.util.DesktopManager) r4
            r0 = 0
            if (r4 == 0) goto L1b
            com.android.systemui.util.DesktopManagerImpl r4 = (com.android.systemui.util.DesktopManagerImpl) r4
            boolean r1 = r4.isDesktopMode()
            if (r1 != 0) goto L19
            boolean r4 = r4.isStandalone()
            if (r4 == 0) goto L1b
        L19:
            r4 = 1
            goto L1c
        L1b:
            r4 = r0
        L1c:
            if (r4 == 0) goto L24
            com.samsung.android.lib.galaxyfinder.search.api.search.SimpleSearchResult r2 = new com.samsung.android.lib.galaxyfinder.search.api.search.SimpleSearchResult
            r2.<init>(r3)
            return r2
        L24:
            boolean r4 = r5.isCanceled()
            if (r4 == 0) goto L32
            com.android.systemui.indexsearch.SystemUIIndexProvider$SearchAsyncTask r2 = r2.mSearchAsyncTask
            if (r2 == 0) goto L51
            r2.cancel(r0)
            goto L51
        L32:
            com.android.systemui.indexsearch.SystemUIIndexProvider$SearchAsyncTask r4 = new com.android.systemui.indexsearch.SystemUIIndexProvider$SearchAsyncTask
            r4.<init>(r2, r0)
            r2.mSearchAsyncTask = r4
            java.lang.String[] r2 = new java.lang.String[]{r3}     // Catch: java.util.concurrent.ExecutionException -> L48 java.lang.InterruptedException -> L4d
            android.os.AsyncTask r2 = r4.execute(r2)     // Catch: java.util.concurrent.ExecutionException -> L48 java.lang.InterruptedException -> L4d
            java.lang.Object r2 = r2.get()     // Catch: java.util.concurrent.ExecutionException -> L48 java.lang.InterruptedException -> L4d
            com.samsung.android.lib.galaxyfinder.search.api.search.SearchResult r2 = (com.samsung.android.lib.galaxyfinder.search.api.search.SearchResult) r2     // Catch: java.util.concurrent.ExecutionException -> L48 java.lang.InterruptedException -> L4d
            return r2
        L48:
            r2 = move-exception
            r2.printStackTrace()
            goto L51
        L4d:
            r2 = move-exception
            r2.printStackTrace()
        L51:
            com.samsung.android.lib.galaxyfinder.search.api.search.SimpleSearchResult r2 = new com.samsung.android.lib.galaxyfinder.search.api.search.SimpleSearchResult
            r2.<init>(r3)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.indexsearch.SystemUIIndexProvider.getSearchResult(java.lang.String, int, android.os.CancellationSignal):com.samsung.android.lib.galaxyfinder.search.api.search.SearchResult");
    }

    @Override // com.samsung.android.lib.galaxyfinder.search.api.SamsungSearchProvider
    public final Intent makeAppLaunchIntent() {
        return new Intent("com.android.systemui.indexsearch.OPEN_DETAIL").setClass(getContext(), DetailPanelLaunchActivity.class);
    }

    @Override // com.samsung.android.lib.galaxyfinder.search.api.SamsungSearchProvider
    public final Intent makeInAppSearchIntent() {
        return null;
    }

    @Override // android.content.ContentProvider
    public final boolean onCreate() {
        this.mSearchAsyncTask = new SearchAsyncTask(this, 0);
        return true;
    }
}
