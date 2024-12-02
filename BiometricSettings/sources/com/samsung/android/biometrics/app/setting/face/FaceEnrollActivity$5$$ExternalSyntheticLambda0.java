package com.samsung.android.biometrics.app.setting.face;

import android.graphics.Bitmap;
import android.os.SystemClock;
import android.widget.ImageView;
import com.samsung.android.biometrics.app.setting.face.FaceEnrollActivity;

/* compiled from: R8$$SyntheticClass */
/* loaded from: classes.dex */
public final /* synthetic */ class FaceEnrollActivity$5$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ FaceEnrollActivity.AnonymousClass5 f$0;

    public /* synthetic */ FaceEnrollActivity$5$$ExternalSyntheticLambda0(FaceEnrollActivity.AnonymousClass5 anonymousClass5, int i) {
        this.$r8$classId = i;
        this.f$0 = anonymousClass5;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        ImageView imageView;
        Bitmap bitmap;
        switch (this.$r8$classId) {
            case 0:
                this.f$0.onEnrollmentHelp(2001, "");
                break;
            case 1:
                FaceEnrollActivity.m67$$Nest$mstartHelpGuideEffect(0, FaceEnrollActivity.this, null);
                break;
            case 2:
                FaceEnrollActivity.this.setEnrollResult(-1);
                break;
            default:
                FaceEnrollActivity.AnonymousClass5 anonymousClass5 = this.f$0;
                z = FaceEnrollActivity.this.mIsPreviewStart;
                if (!z) {
                    if (FaceEnrollActivity.this.mEnrollAnimationView != null) {
                        FaceEnrollActivity.this.mEnrollAnimationView.setPreviewState();
                    }
                    FaceEnrollActivity.this.mIsPreviewStart = true;
                }
                imageView = FaceEnrollActivity.this.mCameraPreview;
                bitmap = FaceEnrollActivity.this.mPreviewImage;
                imageView.setImageBitmap(bitmap);
                FaceEnrollActivity.this.mPreviewImage = null;
                FaceEnrollActivity.this.mLastDecodingTimestamp = SystemClock.elapsedRealtime();
                break;
        }
    }
}
