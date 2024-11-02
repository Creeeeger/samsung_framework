package com.android.settingslib.users;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class CreateUserDialogController$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ CreateUserDialogController f$0;
    public final /* synthetic */ Object f$1;

    public /* synthetic */ CreateUserDialogController$$ExternalSyntheticLambda0(CreateUserDialogController createUserDialogController, Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = createUserDialogController;
        this.f$1 = obj;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:12:? A[RETURN, SYNTHETIC] */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void run() {
        /*
            r5 = this;
            int r0 = r5.$r8$classId
            switch(r0) {
                case 0: goto L6;
                default: goto L5;
            }
        L5:
            goto L1f
        L6:
            com.android.settingslib.users.CreateUserDialogController r0 = r5.f$0
            java.lang.Object r5 = r5.f$1
            java.lang.String r5 = (java.lang.String) r5
            r0.getClass()
            java.io.File r1 = new java.io.File
            r1.<init>(r5)
            java.lang.String r5 = r1.getAbsolutePath()
            android.graphics.Bitmap r5 = android.graphics.BitmapFactory.decodeFile(r5)
            r0.mSavedPhoto = r5
            return
        L1f:
            com.android.settingslib.users.CreateUserDialogController r0 = r5.f$0
            java.lang.Object r5 = r5.f$1
            android.os.Bundle r5 = (android.os.Bundle) r5
            com.android.settingslib.users.EditUserPhotoController r0 = r0.mEditUserPhotoController
            android.graphics.Bitmap r1 = r0.mNewUserPhotoBitmap
            if (r1 != 0) goto L2c
            goto L52
        L2c:
            java.io.File r1 = new java.io.File     // Catch: java.io.IOException -> L4a
            java.io.File r2 = r0.mImagesDir     // Catch: java.io.IOException -> L4a
            java.lang.String r3 = "NewUserPhoto.png"
            r1.<init>(r2, r3)     // Catch: java.io.IOException -> L4a
            java.io.FileOutputStream r2 = new java.io.FileOutputStream     // Catch: java.io.IOException -> L4a
            r2.<init>(r1)     // Catch: java.io.IOException -> L4a
            android.graphics.Bitmap r0 = r0.mNewUserPhotoBitmap     // Catch: java.io.IOException -> L4a
            android.graphics.Bitmap$CompressFormat r3 = android.graphics.Bitmap.CompressFormat.PNG     // Catch: java.io.IOException -> L4a
            r4 = 100
            r0.compress(r3, r4, r2)     // Catch: java.io.IOException -> L4a
            r2.flush()     // Catch: java.io.IOException -> L4a
            r2.close()     // Catch: java.io.IOException -> L4a
            goto L53
        L4a:
            r0 = move-exception
            java.lang.String r1 = "EditUserPhotoController"
            java.lang.String r2 = "Cannot create temp file"
            android.util.Log.e(r1, r2, r0)
        L52:
            r1 = 0
        L53:
            if (r1 == 0) goto L5f
            java.lang.String r0 = "pending_photo"
            java.lang.String r1 = r1.getPath()
            r5.putString(r0, r1)
        L5f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.settingslib.users.CreateUserDialogController$$ExternalSyntheticLambda0.run():void");
    }
}
