package com.android.settingslib.users;

import android.os.Parcelable;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class EditUserPhotoController$$ExternalSyntheticLambda2 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ EditUserPhotoController f$0;
    public final /* synthetic */ Parcelable f$1;

    public /* synthetic */ EditUserPhotoController$$ExternalSyntheticLambda2(EditUserPhotoController editUserPhotoController, Parcelable parcelable, int i) {
        this.$r8$classId = i;
        this.f$0 = editUserPhotoController;
        this.f$1 = parcelable;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0036, code lost:
    
        if (r6 != null) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0047, code lost:
    
        r6.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x004b, code lost:
    
        r6 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x004c, code lost:
    
        android.util.Log.w("EditUserPhotoController", "Cannot close image stream", r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0045, code lost:
    
        if (r6 == null) goto L26;
     */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0060 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void run() {
        /*
            r6 = this;
            int r0 = r6.$r8$classId
            switch(r0) {
                case 0: goto L10;
                case 1: goto L6;
                default: goto L5;
            }
        L5:
            goto L1a
        L6:
            com.android.settingslib.users.EditUserPhotoController r0 = r6.f$0
            android.os.Parcelable r6 = r6.f$1
            android.graphics.Bitmap r6 = (android.graphics.Bitmap) r6
            r0.onPhotoProcessed(r6)
            return
        L10:
            com.android.settingslib.users.EditUserPhotoController r0 = r6.f$0
            android.os.Parcelable r6 = r6.f$1
            android.graphics.Bitmap r6 = (android.graphics.Bitmap) r6
            r0.onPhotoProcessed(r6)
            return
        L1a:
            com.android.settingslib.users.EditUserPhotoController r0 = r6.f$0
            android.os.Parcelable r6 = r6.f$1
            android.net.Uri r6 = (android.net.Uri) r6
            r0.getClass()
            java.lang.String r1 = "Cannot close image stream"
            java.lang.String r2 = "EditUserPhotoController"
            r3 = 0
            android.app.Activity r4 = r0.mActivity     // Catch: java.lang.Throwable -> L3b java.io.FileNotFoundException -> L3d
            android.content.ContentResolver r4 = r4.getContentResolver()     // Catch: java.lang.Throwable -> L3b java.io.FileNotFoundException -> L3d
            java.io.InputStream r6 = r4.openInputStream(r6)     // Catch: java.lang.Throwable -> L3b java.io.FileNotFoundException -> L3d
            android.graphics.Bitmap r3 = android.graphics.BitmapFactory.decodeStream(r6)     // Catch: java.io.FileNotFoundException -> L39 java.lang.Throwable -> L5b
            if (r6 == 0) goto L4f
            goto L47
        L39:
            r4 = move-exception
            goto L40
        L3b:
            r6 = move-exception
            goto L5e
        L3d:
            r6 = move-exception
            r4 = r6
            r6 = r3
        L40:
            java.lang.String r5 = "Cannot find image file"
            android.util.Log.w(r2, r5, r4)     // Catch: java.lang.Throwable -> L5b
            if (r6 == 0) goto L4f
        L47:
            r6.close()     // Catch: java.io.IOException -> L4b
            goto L4f
        L4b:
            r6 = move-exception
            android.util.Log.w(r2, r1, r6)
        L4f:
            if (r3 == 0) goto L5a
            com.android.settingslib.users.EditUserPhotoController$$ExternalSyntheticLambda2 r6 = new com.android.settingslib.users.EditUserPhotoController$$ExternalSyntheticLambda2
            r1 = 1
            r6.<init>(r0, r3, r1)
            com.android.settingslib.utils.ThreadUtils.postOnMainThread(r6)
        L5a:
            return
        L5b:
            r0 = move-exception
            r3 = r6
            r6 = r0
        L5e:
            if (r3 == 0) goto L68
            r3.close()     // Catch: java.io.IOException -> L64
            goto L68
        L64:
            r0 = move-exception
            android.util.Log.w(r2, r1, r0)
        L68:
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.settingslib.users.EditUserPhotoController$$ExternalSyntheticLambda2.run():void");
    }
}
