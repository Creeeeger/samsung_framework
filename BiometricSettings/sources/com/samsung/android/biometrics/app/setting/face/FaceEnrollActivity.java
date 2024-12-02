package com.samsung.android.biometrics.app.setting.face;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.FragmentTransaction;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.YuvImage;
import android.hardware.face.FaceManager;
import android.media.AudioAttributes;
import android.media.AudioManager;
import android.media.SoundPool;
import android.os.Bundle;
import android.os.CancellationSignal;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.MemoryFile;
import android.os.Message;
import android.os.ParcelFileDescriptor;
import android.os.SystemClock;
import android.provider.Settings;
import android.speech.tts.TextToSpeech;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Surface;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.AlphaAnimation;
import android.view.animation.PathInterpolator;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.airbnb.lottie.LottieAnimationView;
import com.airbnb.lottie.RenderMode;
import com.samsung.android.biometrics.app.setting.R;
import com.samsung.android.biometrics.app.setting.Utils;
import com.samsung.android.biometrics.app.setting.face.FaceEnrollActivity;
import com.samsung.android.feature.SemCscFeature;
import com.samsung.android.view.SemWindowManager;
import java.io.ByteArrayOutputStream;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes.dex */
public class FaceEnrollActivity extends Activity {
    public static final /* synthetic */ int $r8$clinit = 0;
    private View.OnAttachStateChangeListener mAttachStateChangeListener;
    private CancellationSignal mCancellationSignal;
    private boolean mCurrentIsFolded;
    private AlertDialog mErrorDialog;
    private Toast mExitToast;
    private SemWindowManager.FoldStateListener mFoldStateListener;
    private boolean mIsGlassGuideShown;
    private boolean mIsPreviewStart;
    private boolean mIsSpokenPositionCorrect;
    private RelativeLayout mMainLayout;
    private HandlerThread mPreviewCBThread;
    private SharedPreferences mSharedPreferences;
    private SoundPool mSoundPool;
    private int mUserId;
    private FaceManager mFaceManager = null;
    private boolean mIsFaceManagerBinded = false;
    protected byte[] mHWToken = null;
    protected boolean mIsWearingGlasses = false;
    private TextView mFaceGuideText = null;
    private TextView mFaceHelpGuideText = null;
    private TextView mFaceProgressText = null;
    private LottieAnimationView mGlassesOffVi = null;
    private Button mGuideContinueBtn = null;
    private ImageView mCameraPreview = null;
    private FaceRegisterEffectView mEnrollAnimationView = null;
    private Button mSetupWizardNextButton = null;
    private boolean mIsUSA = false;
    private FaceEnrollFragment mEnrollFragment = new FaceEnrollFragment();
    private boolean mIsHelpEnabled = false;
    private boolean mIsEnrolling = false;
    private boolean mIsBackSecond = false;
    private Handler mHelpHandler = null;
    private Runnable mHelpRunnable = null;
    private Handler mBackHandler = new Handler() { // from class: com.samsung.android.biometrics.app.setting.face.FaceEnrollActivity.1
        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            super.handleMessage(message);
            FaceEnrollActivity.this.mIsBackSecond = false;
        }
    };
    protected boolean mIsSetupWizard = false;
    private boolean mEnrollPaused = false;
    private boolean mIsTalkbackEnabled = false;
    private TextToSpeech mTts = null;
    private LottieAnimationView mPunchHoleIcon = null;
    private View mPunchCutView = null;
    private View mSecuredKnoxLogoView = null;
    private boolean mIsSupportDualDisplay = Utils.Config.FEATURE_SUPPORT_DUAL_DISPLAY;
    private Bitmap mPreviewImage = null;
    private byte[] mPreviewData = null;
    private Handler mPreviewHandler = null;
    private Handler mPreviewCBHandler = null;
    TextureView mTextureView = null;
    private long mLastDecodingTimestamp = 0;
    private FaceManager.EnrollmentCallback mEnrollmentCallback = new AnonymousClass5();

    /* renamed from: com.samsung.android.biometrics.app.setting.face.FaceEnrollActivity$5, reason: invalid class name */
    final class AnonymousClass5 extends FaceManager.EnrollmentCallback {
        AnonymousClass5() {
        }

        public final void onEnrollmentError(int i, CharSequence charSequence) {
            Log.i("BSS_FaceEnrollActivity", "onEnrollmentError: " + ((Object) charSequence));
            if (FaceEnrollActivity.this.mIsFaceManagerBinded) {
                FaceEnrollActivity.this.pausePunchHoleAnimation();
                if (i == 3) {
                    FaceEnrollActivity.this.setEnrollResult(-2);
                    return;
                }
                if (i == 4) {
                    FaceEnrollActivity faceEnrollActivity = FaceEnrollActivity.this;
                    faceEnrollActivity.showFaceErrorDialog(i, faceEnrollActivity.getString(R.string.face_error_message_no_space));
                } else if (i == 5) {
                    FaceEnrollActivity.this.setEnrollResult(0);
                } else if (i == 100002) {
                    FaceEnrollActivity.this.setEnrollResult(-4);
                } else if (FaceEnrollActivity.this.isResumed()) {
                    FaceEnrollActivity.this.showFaceErrorDialog(i, charSequence);
                }
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:35:0x0115  */
        /* JADX WARN: Removed duplicated region for block: B:43:0x00a3  */
        /* JADX WARN: Removed duplicated region for block: B:44:0x00b7  */
        /* JADX WARN: Removed duplicated region for block: B:45:0x00d5  */
        /* JADX WARN: Removed duplicated region for block: B:46:0x00e9  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final void onEnrollmentHelp(int r7, java.lang.CharSequence r8) {
            /*
                Method dump skipped, instructions count: 430
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.samsung.android.biometrics.app.setting.face.FaceEnrollActivity.AnonymousClass5.onEnrollmentHelp(int, java.lang.CharSequence):void");
        }

        public final void onEnrollmentProgress(int i) {
            if (Utils.Config.FEATURE_FACE_HAL) {
                i = 100 - i;
            }
            Log.i("BSS_FaceEnrollActivity", "onEnrollmentProgress : " + i);
            if (!FaceEnrollActivity.this.mIsEnrolling) {
                FaceEnrollActivity.this.mIsEnrolling = true;
            }
            FaceEnrollActivity.m67$$Nest$mstartHelpGuideEffect(0, FaceEnrollActivity.this, null);
            FaceEnrollActivity.this.setEnrollProgressText(i);
            if (i >= 70 && !FaceEnrollActivity.this.mEnrollPaused) {
                FaceEnrollActivity faceEnrollActivity = FaceEnrollActivity.this;
                if (faceEnrollActivity.mIsWearingGlasses) {
                    faceEnrollActivity.mEnrollPaused = true;
                    FaceEnrollActivity.this.mIsSpokenPositionCorrect = false;
                    FaceEnrollActivity.m66$$Nest$mstartGlassesGuide(FaceEnrollActivity.this);
                    return;
                }
            }
            if (i == 100) {
                new Handler().postDelayed(new FaceEnrollActivity$5$$ExternalSyntheticLambda0(this, 2), 1500L);
            }
        }

        public final void onImageProcessed(final byte[] bArr, final int i, final int i2, final int i3, int i4, final Bundle bundle) {
            if (!Utils.Config.FEATURE_FACE_HAL) {
                Log.e("BSS_FaceEnrollActivity", "It's not face HAL");
                return;
            }
            FaceEnrollActivity.this.mPreviewHandler.post(new FaceEnrollActivity$5$$ExternalSyntheticLambda0(this, 0));
            if (Utils.DEBUG) {
                StringBuilder sb = new StringBuilder("onImageProcessed : w=");
                sb.append(i);
                sb.append(", h=");
                sb.append(i2);
                sb.append(", ori=");
                sb.append(i3);
                sb.append(", imageFormat=");
                sb.append(i4);
                sb.append(", size=");
                sb.append(bArr != null ? Integer.valueOf(bArr.length) : "null");
                sb.append(", b=");
                sb.append(bundle);
                Log.d("BSS_FaceEnrollActivity", sb.toString());
            }
            if (bArr == null || bArr.length == 0) {
                Log.d("BSS_FaceEnrollActivity", "data is null or 0");
            } else {
                FaceEnrollActivity.this.mPreviewCBHandler.post(new Runnable() { // from class: com.samsung.android.biometrics.app.setting.face.FaceEnrollActivity$5$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        Bitmap bitmap;
                        long j;
                        byte[] bArr2;
                        Bitmap bitmap2;
                        Bitmap bitmap3;
                        Bitmap bitmap4;
                        Bitmap bitmap5;
                        Bitmap bitmap6;
                        Bitmap bitmap7;
                        Bitmap bitmap8;
                        FaceEnrollActivity.AnonymousClass5 anonymousClass5 = FaceEnrollActivity.AnonymousClass5.this;
                        byte[] bArr3 = bArr;
                        Bundle bundle2 = bundle;
                        int i5 = i;
                        int i6 = i2;
                        int i7 = i3;
                        FaceEnrollActivity.this.mPreviewData = bArr3;
                        ParcelFileDescriptor parcelFileDescriptor = bundle2 != null ? (ParcelFileDescriptor) bundle2.getParcelable("memoryfile_descriptor") : null;
                        if (parcelFileDescriptor != null) {
                            ParcelFileDescriptor.AutoCloseInputStream autoCloseInputStream = new ParcelFileDescriptor.AutoCloseInputStream(parcelFileDescriptor);
                            try {
                                try {
                                    parcelFileDescriptor.seekTo(0L);
                                    FaceEnrollActivity faceEnrollActivity = FaceEnrollActivity.this;
                                    int size = MemoryFile.getSize(parcelFileDescriptor.getFileDescriptor());
                                    faceEnrollActivity.getClass();
                                    faceEnrollActivity.mPreviewData = FaceEnrollActivity.readFully(autoCloseInputStream, size);
                                } catch (Exception e) {
                                    Log.w("BSS_FaceEnrollActivity", "Unable to read statistics stream", e);
                                }
                            } finally {
                                try {
                                    autoCloseInputStream.close();
                                    parcelFileDescriptor.close();
                                } catch (Exception e2) {
                                    Log.w("BSS_FaceEnrollActivity", "Unable to close stream", e2);
                                }
                            }
                        }
                        bitmap = FaceEnrollActivity.this.mPreviewImage;
                        if (bitmap != null) {
                            Log.i("BSS_FaceEnrollActivity", "onImageProcessed : setImageBitmap not done");
                            return;
                        }
                        long elapsedRealtime = SystemClock.elapsedRealtime();
                        j = FaceEnrollActivity.this.mLastDecodingTimestamp;
                        if (elapsedRealtime - j < 30) {
                            Log.i("BSS_FaceEnrollActivity", "onImageProcessed : Too fast");
                            return;
                        }
                        try {
                            bArr2 = FaceEnrollActivity.this.mPreviewData;
                            YuvImage yuvImage = new YuvImage(bArr2, 17, i5, i6, null);
                            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                            yuvImage.compressToJpeg(new Rect(0, 0, i5, i6), 100, byteArrayOutputStream);
                            FaceEnrollActivity.this.mPreviewImage = BitmapFactory.decodeByteArray(byteArrayOutputStream.toByteArray(), 0, byteArrayOutputStream.size());
                            Matrix matrix = new Matrix();
                            if (i7 == 0) {
                                bitmap7 = FaceEnrollActivity.this.mPreviewImage;
                                bitmap8 = FaceEnrollActivity.this.mPreviewImage;
                                matrix.setRotate(180.0f, bitmap7.getWidth() / 2.0f, bitmap8.getHeight() / 2.0f);
                            } else if (i7 == 270) {
                                bitmap2 = FaceEnrollActivity.this.mPreviewImage;
                                bitmap3 = FaceEnrollActivity.this.mPreviewImage;
                                matrix.setRotate(270.0f, bitmap2.getWidth() / 2.0f, bitmap3.getHeight() / 2.0f);
                            }
                            matrix.preScale(1.0f, -1.0f);
                            FaceEnrollActivity faceEnrollActivity2 = FaceEnrollActivity.this;
                            bitmap4 = faceEnrollActivity2.mPreviewImage;
                            bitmap5 = FaceEnrollActivity.this.mPreviewImage;
                            int width = bitmap5.getWidth();
                            bitmap6 = FaceEnrollActivity.this.mPreviewImage;
                            faceEnrollActivity2.mPreviewImage = Bitmap.createBitmap(bitmap4, 0, 0, width, bitmap6.getHeight(), matrix, true);
                            FaceEnrollActivity.this.mPreviewHandler.post(new FaceEnrollActivity$5$$ExternalSyntheticLambda0(anonymousClass5, 3));
                        } catch (Exception unused) {
                            Log.e("BSS_FaceEnrollActivity", "Image process failed");
                        }
                    }
                });
            }
        }
    }

    /* renamed from: -$$Nest$mgetPositionGuideText, reason: not valid java name */
    static /* bridge */ /* synthetic */ String m60$$Nest$mgetPositionGuideText(FaceEnrollActivity faceEnrollActivity) {
        return faceEnrollActivity.getPositionGuideText(true);
    }

    /* renamed from: -$$Nest$msetDisplayCutOutModelUi, reason: not valid java name */
    static void m63$$Nest$msetDisplayCutOutModelUi(FaceEnrollActivity faceEnrollActivity) {
        faceEnrollActivity.getClass();
        PunchHoleVIHelper punchHoleVIHelper = new PunchHoleVIHelper(faceEnrollActivity);
        if (!punchHoleVIHelper.initialize()) {
            Log.w("BSS_FaceEnrollActivity", "Punch hole initialize failed.");
            return;
        }
        Log.d("BSS_FaceEnrollActivity", "setDisplayCutOutModelUi s");
        View inflate = ((LayoutInflater) faceEnrollActivity.getSystemService("layout_inflater")).inflate(R.layout.face_punch_cut_vi_layout, (ViewGroup) null);
        faceEnrollActivity.mPunchCutView = inflate;
        LottieAnimationView lottieAnimationView = (LottieAnimationView) inflate.findViewById(R.id.punchCutLottieAnimationView);
        faceEnrollActivity.mPunchHoleIcon = lottieAnimationView;
        lottieAnimationView.setAnimation(punchHoleVIHelper.getAnimationName(true));
        faceEnrollActivity.mPunchHoleIcon.loop();
        faceEnrollActivity.mPunchHoleIcon.setRenderMode(RenderMode.HARDWARE);
        Rect punchHoleVIRect = punchHoleVIHelper.getPunchHoleVIRect();
        faceEnrollActivity.mPunchHoleIcon.setTranslationX(punchHoleVIRect.left);
        faceEnrollActivity.mPunchHoleIcon.setTranslationY(punchHoleVIRect.top);
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) faceEnrollActivity.mPunchHoleIcon.getLayoutParams();
        layoutParams.width = punchHoleVIRect.width();
        layoutParams.height = punchHoleVIRect.height();
        faceEnrollActivity.mPunchHoleIcon.setLayoutParams(layoutParams);
        WindowManager.LayoutParams layoutParams2 = new WindowManager.LayoutParams(2008, 296, -3);
        layoutParams2.layoutInDisplayCutoutMode = 1;
        layoutParams2.gravity = 48;
        ((WindowManager) faceEnrollActivity.getSystemService("window")).addView(faceEnrollActivity.mPunchCutView, layoutParams2);
        Log.d("BSS_FaceEnrollActivity", "setDisplayCutOutModelUi e");
    }

    /* renamed from: -$$Nest$mstartGlassesGuide, reason: not valid java name */
    static void m66$$Nest$mstartGlassesGuide(FaceEnrollActivity faceEnrollActivity) {
        faceEnrollActivity.getClass();
        AlphaAnimation alphaAnimation = getAlphaAnimation(230, 0.0f, 1.0f);
        faceEnrollActivity.pausePunchHoleAnimation();
        Utils.playVibration(faceEnrollActivity);
        if (faceEnrollActivity.mIsSetupWizard) {
            faceEnrollActivity.dismissSecuredKnoxLogo();
        }
        ImageView imageView = faceEnrollActivity.mCameraPreview;
        if (imageView != null) {
            imageView.setColorFilter(faceEnrollActivity.getColor(R.color.intelligent_enroll_background_color));
        }
        TextureView textureView = faceEnrollActivity.mTextureView;
        if (textureView != null) {
            textureView.setVisibility(4);
        }
        FaceRegisterEffectView faceRegisterEffectView = faceEnrollActivity.mEnrollAnimationView;
        if (faceRegisterEffectView != null) {
            faceRegisterEffectView.stopScanEffect();
            faceEnrollActivity.mEnrollAnimationView.setErrorState();
        }
        LottieAnimationView lottieAnimationView = faceEnrollActivity.mGlassesOffVi;
        int i = 1;
        if (lottieAnimationView != null) {
            lottieAnimationView.startAnimation(alphaAnimation);
            faceEnrollActivity.mGlassesOffVi.setVisibility(0);
            faceEnrollActivity.mGlassesOffVi.setRepeatCount(-1);
            faceEnrollActivity.mGlassesOffVi.playAnimation();
            faceEnrollActivity.setHelpString(-1, true);
            faceEnrollActivity.mFaceHelpGuideText.setText("");
            if (faceEnrollActivity.mIsTalkbackEnabled) {
                faceEnrollActivity.mFaceHelpGuideText.setVisibility(4);
                faceEnrollActivity.mFaceGuideText.setAccessibilityDelegate(new View.AccessibilityDelegate() { // from class: com.samsung.android.biometrics.app.setting.face.FaceEnrollActivity.3
                    @Override // android.view.View.AccessibilityDelegate
                    public final void sendAccessibilityEventUnchecked(View view, AccessibilityEvent accessibilityEvent) {
                        if (accessibilityEvent.getEventType() == 2048) {
                            return;
                        }
                        if (accessibilityEvent.getEventType() == 32768 && FaceEnrollActivity.this.mTts != null && FaceEnrollActivity.this.mTts.isSpeaking()) {
                            return;
                        }
                        super.sendAccessibilityEventUnchecked(view, accessibilityEvent);
                    }
                });
            }
            String string = faceEnrollActivity.getString(R.string.face_guide_wearing_glasses_text);
            faceEnrollActivity.mFaceGuideText.setText(string);
            faceEnrollActivity.runTextToSpeech(0, string);
            faceEnrollActivity.runTextToSpeech(1, faceEnrollActivity.getString(R.string.common_select_continue_button));
        }
        Button button = faceEnrollActivity.mGuideContinueBtn;
        if (button != null) {
            if (!faceEnrollActivity.mIsSetupWizard) {
                button.setVisibility(0);
                faceEnrollActivity.mIsGlassGuideShown = true;
                faceEnrollActivity.mGuideContinueBtn.startAnimation(alphaAnimation);
                faceEnrollActivity.mGuideContinueBtn.setOnClickListener(new FaceEnrollActivity$$ExternalSyntheticLambda0(faceEnrollActivity, 2));
                return;
            }
            button.setVisibility(8);
            Button button2 = faceEnrollActivity.mSetupWizardNextButton;
            if (button2 != null) {
                button2.setVisibility(0);
                faceEnrollActivity.mSetupWizardNextButton.setOnClickListener(new FaceEnrollActivity$$ExternalSyntheticLambda0(faceEnrollActivity, i));
            }
        }
    }

    /* renamed from: -$$Nest$mstartHelpGuideEffect, reason: not valid java name */
    static void m67$$Nest$mstartHelpGuideEffect(int i, FaceEnrollActivity faceEnrollActivity, String str) {
        TextView textView = faceEnrollActivity.mFaceGuideText;
        if (textView == null) {
            Log.d("BSS_FaceEnrollActivity", "Help view is null : close effect");
            return;
        }
        if (faceEnrollActivity.mIsGlassGuideShown) {
            return;
        }
        if (i == 1) {
            textView.setText(str);
        } else if (i == 0 && faceEnrollActivity.mIsHelpEnabled) {
            textView.setText(R.string.intelligentscan_guide_register_description);
            faceEnrollActivity.setHelpString(-1, true);
            faceEnrollActivity.mIsHelpEnabled = false;
        }
    }

    /* renamed from: -$$Nest$mstartPreviewImageEffect, reason: not valid java name */
    static void m68$$Nest$mstartPreviewImageEffect(FaceEnrollActivity faceEnrollActivity) {
        if (faceEnrollActivity.mFaceProgressText == null || faceEnrollActivity.mFaceGuideText == null) {
            return;
        }
        AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
        alphaAnimation.setDuration(230L);
        alphaAnimation.setInterpolator(new PathInterpolator(0.33f, 0.0f, 0.2f, 1.0f));
        alphaAnimation.setFillAfter(true);
        faceEnrollActivity.mFaceProgressText.setVisibility(0);
        faceEnrollActivity.mFaceProgressText.startAnimation(alphaAnimation);
        faceEnrollActivity.mFaceGuideText.setText(R.string.intelligentscan_guide_register_description);
        faceEnrollActivity.mFaceGuideText.startAnimation(alphaAnimation);
        AlphaAnimation alphaAnimation2 = new AlphaAnimation(1.0f, 0.0f);
        alphaAnimation2.setDuration(100L);
        alphaAnimation2.setInterpolator(new PathInterpolator(0.33f, 0.0f, 0.2f, 1.0f));
        alphaAnimation2.setFillAfter(true);
        faceEnrollActivity.playPunchHoleAnimation();
    }

    private void dismissSecuredKnoxLogo() {
        if (this.mSecuredKnoxLogoView != null) {
            try {
                ((WindowManager) getSystemService("window")).removeView(this.mSecuredKnoxLogoView);
                this.mSecuredKnoxLogoView = null;
            } catch (Exception e) {
                Log.e("BSS_FaceEnrollActivity", e.toString());
            }
        }
    }

    private static AlphaAnimation getAlphaAnimation(int i, float f, float f2) {
        AlphaAnimation alphaAnimation = new AlphaAnimation(f, f2);
        alphaAnimation.setDuration(i);
        alphaAnimation.setFillAfter(true);
        alphaAnimation.setInterpolator(new PathInterpolator(0.33f, 0.0f, 0.2f, 1.0f));
        return alphaAnimation;
    }

    private String getPositionGuideText(boolean z) {
        return this.mIsTalkbackEnabled ? this.mIsUSA ? getString(R.string.face_guide_register_description, new Object[]{Integer.valueOf(getResources().getInteger(R.integer.sec_face_enroll_distance_inch_from)), Integer.valueOf(getResources().getInteger(R.integer.sec_face_enroll_distance_inch_to))}) : z ? getString(R.string.face_guide_register_description_cm_tts, new Object[]{Integer.valueOf(getResources().getInteger(R.integer.sec_face_enroll_distance_cm_from)), Integer.valueOf(getResources().getInteger(R.integer.sec_face_enroll_distance_cm_to))}) : getString(R.string.face_guide_register_description_cm, new Object[]{Integer.valueOf(getResources().getInteger(R.integer.sec_face_enroll_distance_cm_from)), Integer.valueOf(getResources().getInteger(R.integer.sec_face_enroll_distance_cm_to))}) : getString(R.string.face_guide_register_additional_description);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hideGlassesGuide(View view) {
        AlphaAnimation alphaAnimation = getAlphaAnimation(230, 1.0f, 0.0f);
        this.mIsGlassGuideShown = false;
        this.mFaceGuideText.setText(R.string.intelligentscan_guide_register_description);
        setHelpString(-1, true);
        if (view != null) {
            view.setEnabled(false);
            view.setVisibility(8);
            view.startAnimation(alphaAnimation);
        }
        LottieAnimationView lottieAnimationView = this.mGlassesOffVi;
        if (lottieAnimationView != null) {
            lottieAnimationView.cancelAnimation();
            this.mGlassesOffVi.setVisibility(8);
            this.mGlassesOffVi.startAnimation(alphaAnimation);
        }
        ImageView imageView = this.mCameraPreview;
        if (imageView != null) {
            imageView.setColorFilter((ColorFilter) null);
        }
        TextureView textureView = this.mTextureView;
        if (textureView != null) {
            textureView.setVisibility(0);
        }
        FaceRegisterEffectView faceRegisterEffectView = this.mEnrollAnimationView;
        if (faceRegisterEffectView != null) {
            faceRegisterEffectView.startScanEffect();
        }
        FaceManager faceManager = this.mFaceManager;
        if (faceManager != null) {
            faceManager.semResumeEnroll();
            playPunchHoleAnimation();
        }
        if (this.mIsSetupWizard) {
            showSecuredKnoxLogo();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void pausePunchHoleAnimation() {
        View view;
        if (this.mPunchHoleIcon == null || (view = this.mPunchCutView) == null) {
            return;
        }
        view.setVisibility(8);
        this.mPunchHoleIcon.pauseAnimation();
    }

    private void playPunchHoleAnimation() {
        View view;
        boolean z = Utils.DEBUG;
        if (Settings.System.getInt(getContentResolver(), "any_screen_running", 0) == 1) {
            pausePunchHoleAnimation();
        } else {
            if (this.mPunchHoleIcon == null || (view = this.mPunchCutView) == null) {
                return;
            }
            view.setVisibility(0);
            this.mPunchHoleIcon.playAnimation();
        }
    }

    public static byte[] readFully(FileInputStream fileInputStream, int i) throws IOException {
        byte[] bArr = new byte[i];
        int i2 = 0;
        while (true) {
            int read = fileInputStream.read(bArr, i2, bArr.length - i2);
            if (read <= 0) {
                return bArr;
            }
            i2 += read;
            int available = fileInputStream.available();
            if (available > bArr.length - i2) {
                byte[] bArr2 = new byte[available + i2];
                System.arraycopy(bArr, 0, bArr2, 0, i2);
                bArr = bArr2;
            }
        }
    }

    private void removePunchHoleAnimation() {
        if (this.mPunchCutView != null) {
            try {
                ((WindowManager) getSystemService("window")).removeView(this.mPunchCutView);
                this.mPunchCutView = null;
                this.mPunchHoleIcon = null;
            } catch (Exception e) {
                Log.e("BSS_FaceEnrollActivity", e.toString());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void runTextToSpeech(int i, String str) {
        if (!this.mIsTalkbackEnabled || this.mTts == null || TextUtils.isEmpty(str)) {
            return;
        }
        this.mTts.speak(str, i, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:31:0x006d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void setHelpString(int r5, boolean r6) {
        /*
            r4 = this;
            android.widget.TextView r0 = r4.mFaceHelpGuideText
            if (r0 == 0) goto L77
            boolean r1 = r4.mIsGlassGuideShown
            if (r1 == 0) goto La
            goto L77
        La:
            r1 = 330(0x14a, float:4.62E-43)
            r2 = 0
            r3 = 1065353216(0x3f800000, float:1.0)
            if (r6 == 0) goto L21
            int r6 = r0.getVisibility()
            if (r6 != 0) goto L21
            android.view.animation.AlphaAnimation r5 = getAlphaAnimation(r1, r3, r2)
            android.widget.TextView r4 = r4.mFaceHelpGuideText
            r4.startAnimation(r5)
            return
        L21:
            r6 = 1
            r0 = 0
            if (r5 == r6) goto L55
            r6 = 11
            if (r5 == r6) goto L50
            r6 = 19
            if (r5 == r6) goto L48
            r6 = 21
            if (r5 == r6) goto L55
            r6 = 1017(0x3f9, float:1.425E-42)
            if (r5 == r6) goto L48
            r6 = 3
            if (r5 == r6) goto L40
            r6 = 4
            if (r5 == r6) goto L50
            r6 = 5
            if (r5 == r6) goto L50
            r5 = 0
            goto L5c
        L40:
            r5 = 2131755124(0x7f100074, float:1.9141118E38)
            java.lang.String r5 = r4.getString(r5)
            goto L5c
        L48:
            r5 = 2131755123(0x7f100073, float:1.9141116E38)
            java.lang.String r5 = r4.getString(r5)
            goto L5c
        L50:
            java.lang.String r5 = r4.getPositionGuideText(r0)
            goto L5c
        L55:
            r5 = 2131755121(0x7f100071, float:1.9141112E38)
            java.lang.String r5 = r4.getString(r5)
        L5c:
            android.widget.TextView r6 = r4.mFaceHelpGuideText
            r6.setText(r5)
            android.view.animation.AlphaAnimation r5 = getAlphaAnimation(r1, r2, r3)
            android.widget.TextView r6 = r4.mFaceHelpGuideText
            int r6 = r6.getVisibility()
            if (r6 == 0) goto L72
            android.widget.TextView r6 = r4.mFaceHelpGuideText
            r6.setVisibility(r0)
        L72:
            android.widget.TextView r4 = r4.mFaceHelpGuideText
            r4.startAnimation(r5)
        L77:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.samsung.android.biometrics.app.setting.face.FaceEnrollActivity.setHelpString(int, boolean):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showFaceErrorDialog(final int i, CharSequence charSequence) {
        AlertDialog.Builder onDismissListener = new AlertDialog.Builder(this, (!Utils.isColorThemeEnabled(this) || Utils.isNightThemeOn(this)) ? android.R.style.Theme.DeviceDefault.Dialog.Alert : 0).setMessage(charSequence).setPositiveButton(R.string.face_enroll_error_button_ok, (DialogInterface.OnClickListener) null).setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.samsung.android.biometrics.app.setting.face.FaceEnrollActivity$$ExternalSyntheticLambda1
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                FaceEnrollActivity faceEnrollActivity = FaceEnrollActivity.this;
                int i2 = i;
                int i3 = FaceEnrollActivity.$r8$clinit;
                faceEnrollActivity.getClass();
                if (i2 == 1005 || i2 == 1 || i2 == 2) {
                    faceEnrollActivity.setEnrollResult(-3);
                } else {
                    faceEnrollActivity.setEnrollResult(0);
                }
            }
        });
        if (i == 1005) {
            onDismissListener.setTitle(getString(R.string.face_enroll_error_title));
        } else if (i == 4) {
            onDismissListener.setTitle(getString(R.string.face_error_title_no_space));
        } else {
            onDismissListener.setTitle(getString(R.string.face_error_unable_to_process_popup_title));
        }
        dismissSecuredKnoxLogo();
        AlertDialog create = onDismissListener.create();
        this.mErrorDialog = create;
        create.setCanceledOnTouchOutside(false);
        this.mErrorDialog.show();
        this.mErrorDialog.getButton(-1).setTextColor(getResources().getColor(R.color.fingerprint_verification_negative_text_color));
    }

    private void showFolderOpenDialog() {
        AlertDialog create = new AlertDialog.Builder(this, (!Utils.isColorThemeEnabled(this) || Utils.isNightThemeOn(this)) ? android.R.style.Theme.DeviceDefault.Dialog.Alert : 0).setTitle(getResources().getString(R.string.face_enroll_error_title)).setMessage(getResources().getString(R.string.face_enroll_error_folder_open)).setPositiveButton(R.string.face_enroll_error_button_ok, new DialogInterface.OnClickListener() { // from class: com.samsung.android.biometrics.app.setting.face.FaceEnrollActivity$$ExternalSyntheticLambda2
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                FaceEnrollActivity faceEnrollActivity = FaceEnrollActivity.this;
                int i2 = FaceEnrollActivity.$r8$clinit;
                faceEnrollActivity.setEnrollResult(0);
            }
        }).setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.samsung.android.biometrics.app.setting.face.FaceEnrollActivity$$ExternalSyntheticLambda3
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                FaceEnrollActivity faceEnrollActivity = FaceEnrollActivity.this;
                int i = FaceEnrollActivity.$r8$clinit;
                faceEnrollActivity.setEnrollResult(0);
            }
        }).create();
        create.show();
        create.getButton(-1).setTextColor(getResources().getColor(R.color.fingerprint_verification_negative_text_color));
    }

    private void showSecuredKnoxLogo() {
        Log.d("BSS_FaceEnrollActivity", "showSecuredKnoxLogo");
        this.mSecuredKnoxLogoView = ((LayoutInflater) getSystemService("layout_inflater")).inflate(R.layout.face_secured_knox_logo_view, (ViewGroup) null);
        try {
            WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(-1, -2, 2008, 296, -3);
            layoutParams.gravity = 80;
            ((WindowManager) getSystemService("window")).addView(this.mSecuredKnoxLogoView, layoutParams);
        } catch (WindowManager.BadTokenException e) {
            Log.e("BSS_FaceEnrollActivity", "showSecuredKnoxLogo error : + " + e.toString());
        } catch (WindowManager.InvalidDisplayException e2) {
            Log.e("BSS_FaceEnrollActivity", "showSecuredKnoxLogo error : + " + e2.toString());
        }
    }

    protected final void initFaceEnroll(View view) {
        Log.d("BSS_FaceEnrollActivity", "initFaceEnroll");
        this.mFaceGuideText = (TextView) view.findViewById(R.id.guide_text);
        this.mFaceProgressText = (TextView) view.findViewById(R.id.progress_text);
        this.mGuideContinueBtn = (Button) view.findViewById(R.id.glasses_guide_btn);
        this.mGlassesOffVi = (LottieAnimationView) view.findViewById(R.id.glasses_guide_video);
        this.mFaceHelpGuideText = (TextView) view.findViewById(R.id.guide_text_additional);
        this.mEnrollAnimationView = (FaceRegisterEffectView) view.findViewById(R.id.scan_animation_view);
        if (Utils.Config.FEATURE_FACE_HAL) {
            ImageView imageView = (ImageView) view.findViewById(R.id.camera_preview);
            this.mCameraPreview = imageView;
            imageView.setVisibility(0);
        }
        if (!Utils.DEBUG) {
            getWindow().addFlags(8192);
        }
        if (Utils.Config.FEATURE_SUPPORT_DUAL_DISPLAY && !Utils.getFolderOpenState(this, this.mIsSupportDualDisplay)) {
            showFolderOpenDialog();
        }
        TextView textView = this.mFaceProgressText;
        if (textView != null) {
            textView.setText(TextUtils.expandTemplate(getText(R.string.face_enroll_percent_format_text), String.format("%d", 0)));
        }
        TextView textView2 = this.mFaceGuideText;
        if (textView2 != null && this.mIsTalkbackEnabled) {
            textView2.setText(getPositionGuideText(false));
            this.mFaceGuideText.setVisibility(0);
        }
        Button button = this.mGuideContinueBtn;
        if (button != null && this.mIsSetupWizard) {
            button.setVisibility(8);
        }
        FaceRegisterEffectView faceRegisterEffectView = this.mEnrollAnimationView;
        if (faceRegisterEffectView != null) {
            faceRegisterEffectView.showStartingAnimation();
        }
    }

    @Override // android.app.Activity
    public final void onBackPressed() {
        if (!this.mIsBackSecond) {
            this.mIsBackSecond = true;
            if (!this.mIsTalkbackEnabled) {
                this.mBackHandler.sendEmptyMessageDelayed(0, 2000L);
            }
            this.mExitToast.show();
            return;
        }
        Log.d("BSS_FaceEnrollActivity", "Face enroll screen is terminated by Back key !!");
        this.mIsBackSecond = false;
        this.mExitToast.cancel();
        setEnrollResult(0);
        super.onBackPressed();
    }

    @Override // android.app.Activity
    protected final void onCreate(Bundle bundle) {
        View findViewById;
        Log.d("BSS_FaceEnrollActivity", "onCreate");
        setTitle(" ");
        super.onCreate(bundle);
        setContentView(R.layout.face_register_activity);
        Utils.Config.FEATURE_FACE_HAL = getPackageManager().hasSystemFeature("android.hardware.biometrics.face");
        this.mHelpHandler = new Handler();
        this.mPreviewHandler = new Handler();
        int i = 0;
        HandlerThread handlerThread = new HandlerThread("Preview Thread", 0);
        this.mPreviewCBThread = handlerThread;
        handlerThread.start();
        this.mPreviewCBHandler = this.mPreviewCBThread.getThreadHandler();
        this.mIsSetupWizard = getIntent().getBooleanExtra("fromSetupWizard", false);
        this.mSharedPreferences = getPreferences(0);
        boolean z = Utils.DEBUG;
        this.mIsUSA = "US".equalsIgnoreCase(SemCscFeature.getInstance().getString("CountryISO"));
        this.mIsTalkbackEnabled = Utils.isTalkBackEnabled(this);
        this.mUserId = getIntent().getIntExtra("android.intent.extra.USER_ID", 0);
        if (this.mIsSupportDualDisplay) {
            if (this.mFoldStateListener == null) {
                this.mFoldStateListener = new SemWindowManager.FoldStateListener() { // from class: com.samsung.android.biometrics.app.setting.face.FaceEnrollActivity.6
                    public final void onFoldStateChanged(boolean z2) {
                        if (FaceEnrollActivity.this.mCurrentIsFolded != z2) {
                            if (FaceEnrollActivity.this.mMainLayout != null) {
                                FaceEnrollActivity.this.mMainLayout.setVisibility(8);
                            }
                            Toast.makeText(FaceEnrollActivity.this.getApplicationContext(), FaceEnrollActivity.this.getString(R.string.face_enroll_cancel), 1).show();
                            FaceEnrollActivity faceEnrollActivity = FaceEnrollActivity.this;
                            if (faceEnrollActivity.mIsSetupWizard) {
                                faceEnrollActivity.setEnrollResult(-5);
                            } else {
                                faceEnrollActivity.setEnrollResult(0);
                            }
                        }
                    }

                    public final void onTableModeChanged(boolean z2) {
                    }
                };
                SemWindowManager.getInstance().registerFoldStateListener(this.mFoldStateListener, (Handler) null);
            }
            this.mCurrentIsFolded = getResources().getConfiguration().semDisplayDeviceType == 5;
        }
        if (this.mIsSetupWizard && (findViewById = findViewById(R.id.face_suw_bottom_container)) != null) {
            findViewById.setVisibility(0);
            this.mSetupWizardNextButton = (Button) findViewById.findViewById(R.id.next_button_area);
        }
        Button button = this.mSetupWizardNextButton;
        if (button != null) {
            button.setVisibility(4);
            this.mSetupWizardNextButton.setOnClickListener(new FaceEnrollActivity$$ExternalSyntheticLambda0(this, i));
        }
        RelativeLayout relativeLayout = (RelativeLayout) findViewById(R.id.activity_main);
        this.mMainLayout = relativeLayout;
        if (relativeLayout != null) {
            View.OnAttachStateChangeListener onAttachStateChangeListener = new View.OnAttachStateChangeListener() { // from class: com.samsung.android.biometrics.app.setting.face.FaceEnrollActivity.2
                @Override // android.view.View.OnAttachStateChangeListener
                public final void onViewAttachedToWindow(View view) {
                    Log.d("BSS_FaceEnrollActivity", "onViewAttachedToWindow");
                    FaceEnrollActivity.m63$$Nest$msetDisplayCutOutModelUi(FaceEnrollActivity.this);
                    if (Utils.isDesktopStandaloneMode(FaceEnrollActivity.this.getApplicationContext())) {
                        ViewGroup viewGroup = (ViewGroup) FaceEnrollActivity.this.getWindow().getDecorView();
                        View findViewById2 = viewGroup.findViewById(viewGroup.getResources().getIdentifier("reduce_window", "id", "android"));
                        if (findViewById2 != null) {
                            findViewById2.setVisibility(8);
                        }
                    }
                }

                @Override // android.view.View.OnAttachStateChangeListener
                public final void onViewDetachedFromWindow(View view) {
                    Log.d("BSS_FaceEnrollActivity", "onViewDetachedFromWindow");
                    FaceEnrollActivity.this.finish();
                }
            };
            this.mAttachStateChangeListener = onAttachStateChangeListener;
            relativeLayout.addOnAttachStateChangeListener(onAttachStateChangeListener);
        }
    }

    @Override // android.app.Activity
    public final void onMultiWindowModeChanged(boolean z, Configuration configuration) {
        super.onMultiWindowModeChanged(z, configuration);
        Log.d("BSS_FaceEnrollActivity", "onMultiWindowModeChanged : " + z);
        if (z) {
            Toast.makeText(this, R.string.face_doesnt_support_multi_window_text, 0).show();
            setEnrollResult(0);
        }
    }

    @Override // android.app.Activity
    protected final void onPause() {
        Log.d("BSS_FaceEnrollActivity", "onPause");
        super.onPause();
        setRequestedOrientation(4);
        Log.d("BSS_FaceEnrollActivity", "stopEnrollment");
        if (this.mIsFaceManagerBinded) {
            CancellationSignal cancellationSignal = this.mCancellationSignal;
            if (cancellationSignal != null) {
                cancellationSignal.cancel();
                this.mCancellationSignal = null;
            }
            this.mIsFaceManagerBinded = false;
        }
        TextToSpeech textToSpeech = this.mTts;
        if (textToSpeech != null) {
            textToSpeech.stop();
            this.mTts.shutdown();
            this.mTts = null;
        }
        SoundPool soundPool = this.mSoundPool;
        if (soundPool != null) {
            soundPool.release();
            this.mSoundPool = null;
        }
        pausePunchHoleAnimation();
        removePunchHoleAnimation();
        dismissSecuredKnoxLogo();
        if (this.mIsSetupWizard) {
            setEnrollResult(-2);
        } else {
            if (isFinishing()) {
                return;
            }
            Intent intent = new Intent();
            intent.putExtra("biometrics_settings_destroy", true);
            setResult(0, intent);
            finish();
        }
    }

    @Override // android.app.Activity
    protected final void onResume() {
        Button button;
        super.onResume();
        Log.d("BSS_FaceEnrollActivity", "onResume");
        boolean z = false;
        Toast makeText = Toast.makeText(this, getString(R.string.face_enroll_back_key_toast), 0);
        this.mExitToast = makeText;
        if (this.mIsTalkbackEnabled) {
            makeText.addCallback(new Toast.Callback() { // from class: com.samsung.android.biometrics.app.setting.face.FaceEnrollActivity.4
                @Override // android.widget.Toast.Callback
                public final void onToastHidden() {
                    FaceEnrollActivity.this.mIsBackSecond = false;
                }

                @Override // android.widget.Toast.Callback
                public final void onToastShown() {
                    FaceEnrollActivity.this.mIsBackSecond = true;
                }
            });
        }
        SharedPreferences sharedPreferences = this.mSharedPreferences;
        boolean z2 = sharedPreferences != null && sharedPreferences.getBoolean("face_disclaimer_key", false);
        boolean booleanExtra = getIntent().getBooleanExtra("face_enroll_retry", false);
        Log.v("BSS_FaceEnrollActivity", "onResume, isRetry = " + booleanExtra);
        Log.v("BSS_FaceEnrollActivity", "onResume, isEnabledDisclaimer = " + z2);
        if (this.mIsTalkbackEnabled) {
            setTitle(getPositionGuideText(true));
        }
        if (this.mIsTalkbackEnabled) {
            TextToSpeech textToSpeech = new TextToSpeech(this, null);
            this.mTts = textToSpeech;
            textToSpeech.setAudioAttributes(new AudioAttributes.Builder().setUsage(11).build());
        }
        int i = Settings.System.getInt(getContentResolver(), "sidesync_source_connect", 0);
        if (i == 1) {
            Log.v("BSS_FaceEnrollActivity", "onResume, sidesyncEnabled = " + i);
            Toast.makeText(this, R.string.face_enroll_sidesync_toast, 1).show();
            setEnrollResult(0);
            return;
        }
        if (Utils.isDesktopStandaloneMode(this) && getResources().getInteger(R.integer.sec_face_enroll_activity_orientation) == 1) {
            Toast.makeText(this, R.string.face_dex_standalone_block_register, 1).show();
            setEnrollResult(0);
            return;
        }
        this.mHWToken = getIntent().getByteArrayExtra("hw_auth_token");
        StringBuilder sb = new StringBuilder("onResume, mHWToken = ");
        byte[] bArr = this.mHWToken;
        sb.append(bArr != null ? Arrays.toString(bArr) : "NULL");
        Log.d("BSS_FaceEnrollActivity", sb.toString());
        Log.d("BSS_FaceEnrollActivity", "getFaceManager");
        if (!this.mIsFaceManagerBinded) {
            FaceManager faceManager = (FaceManager) getSystemService("face");
            this.mFaceManager = faceManager;
            if (faceManager == null) {
                Log.e("BSS_FaceEnrollActivity", "getFaceManager() : mFaceManager == null");
                this.mIsFaceManagerBinded = false;
                if (z || this.mHWToken == null) {
                    getString(R.string.face_error_unable_to_process);
                    showFaceErrorDialog(-1, getString(R.string.face_error_unable_to_process));
                }
                button = this.mSetupWizardNextButton;
                if (button != null && booleanExtra) {
                    button.setVisibility(4);
                }
                setEnrollFragment();
            }
            this.mIsFaceManagerBinded = true;
        }
        z = true;
        if (z) {
        }
        getString(R.string.face_error_unable_to_process);
        showFaceErrorDialog(-1, getString(R.string.face_error_unable_to_process));
        button = this.mSetupWizardNextButton;
        if (button != null) {
            button.setVisibility(4);
        }
        setEnrollFragment();
    }

    @Override // android.app.Activity
    public final void onStop() {
        Log.d("BSS_FaceEnrollActivity", "onStop");
        super.onStop();
        if (this.mFoldStateListener == null) {
            return;
        }
        SemWindowManager.getInstance().unregisterFoldStateListener(this.mFoldStateListener);
    }

    public final void setEnrollFragment() {
        if (isFinishing()) {
            Log.d("BSS_FaceEnrollActivity", "setEnrollFragment fail : isFinishing");
            return;
        }
        FragmentTransaction beginTransaction = getFragmentManager().beginTransaction();
        beginTransaction.replace(R.id.face_fragment_view, this.mEnrollFragment);
        beginTransaction.commitAllowingStateLoss();
    }

    public final void setEnrollProgressText(int i) {
        Runnable runnable;
        TextToSpeech textToSpeech;
        FaceRegisterEffectView faceRegisterEffectView = this.mEnrollAnimationView;
        if (faceRegisterEffectView != null) {
            faceRegisterEffectView.setProgress(i);
        }
        TextView textView = this.mFaceProgressText;
        if (textView != null) {
            textView.setText(TextUtils.expandTemplate(getText(R.string.face_enroll_percent_format_text), String.format("%d", Integer.valueOf(i))));
        }
        if (this.mIsTalkbackEnabled) {
            if (i > 0 && !this.mIsSpokenPositionCorrect) {
                this.mIsSpokenPositionCorrect = true;
                runTextToSpeech(0, getString(R.string.intelligentscan_guide_register_description));
            }
            if (this.mIsSpokenPositionCorrect && (textToSpeech = this.mTts) != null && !textToSpeech.isSpeaking()) {
                if (i == 30) {
                    runTextToSpeech(0, getString(R.string.intelligentscan_guide_register_talkback));
                }
                if (this.mIsWearingGlasses) {
                    if (i == 60) {
                        runTextToSpeech(0, getString(R.string.intelligentscan_guide_register_talkback));
                    }
                } else if (i == 70) {
                    runTextToSpeech(0, getString(R.string.intelligentscan_guide_register_talkback));
                }
            }
        }
        if (i == 100) {
            if (this.mIsHelpEnabled) {
                Handler handler = this.mHelpHandler;
                if (handler != null && (runnable = this.mHelpRunnable) != null) {
                    handler.removeCallbacks(runnable);
                }
                setHelpString(-1, true);
                this.mIsHelpEnabled = false;
            }
            pausePunchHoleAnimation();
            removePunchHoleAnimation();
            dismissSecuredKnoxLogo();
            this.mSoundPool = new SoundPool.Builder().setAudioAttributes(new AudioAttributes.Builder().setUsage(5).setContentType(4).build()).setMaxStreams(1).build();
            int streamMaxVolume = ((AudioManager) getSystemService("audio")).getStreamMaxVolume(1);
            final float streamVolume = streamMaxVolume > 0 ? r7.getStreamVolume(1) / streamMaxVolume : 0.0f;
            final int load = this.mSoundPool.load(this, R.raw.face_regi_success, 1);
            this.mSoundPool.setOnLoadCompleteListener(new SoundPool.OnLoadCompleteListener() { // from class: com.samsung.android.biometrics.app.setting.face.FaceEnrollActivity$$ExternalSyntheticLambda4
                @Override // android.media.SoundPool.OnLoadCompleteListener
                public final void onLoadComplete(SoundPool soundPool, int i2, int i3) {
                    int i4 = load;
                    float f = streamVolume;
                    int i5 = FaceEnrollActivity.$r8$clinit;
                    soundPool.play(i4, f, f, 0, 0, 1.0f);
                }
            });
            Utils.playVibration(this);
            if (this.mFaceGuideText != null) {
                AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
                alphaAnimation.setDuration(250L);
                alphaAnimation.setFillAfter(true);
                this.mFaceGuideText.setAlpha(1.0f);
                this.mFaceGuideText.setVisibility(0);
                this.mFaceGuideText.setText(R.string.face_enroll_completed);
                this.mFaceGuideText.startAnimation(alphaAnimation);
            }
            TextView textView2 = this.mFaceHelpGuideText;
            if (textView2 != null) {
                textView2.setVisibility(8);
            }
            View findViewById = findViewById(R.id.face_enroll_scroll_view);
            if (findViewById != null) {
                findViewById.semRequestAccessibilityFocus();
            }
        }
    }

    public final void setEnrollResult(int i) {
        View.OnAttachStateChangeListener onAttachStateChangeListener;
        Log.d("BSS_FaceEnrollActivity", "setEnrollResult to " + i);
        AlertDialog alertDialog = this.mErrorDialog;
        if (alertDialog == null || !alertDialog.isShowing()) {
            RelativeLayout relativeLayout = this.mMainLayout;
            if (relativeLayout != null && (onAttachStateChangeListener = this.mAttachStateChangeListener) != null) {
                relativeLayout.removeOnAttachStateChangeListener(onAttachStateChangeListener);
                this.mAttachStateChangeListener = null;
            }
            Intent intent = new Intent();
            intent.putExtra("face_wear_glasses", this.mIsWearingGlasses);
            setResult(i, intent);
            finish();
        }
    }

    protected final void startEnrollment() {
        if (Utils.Config.FEATURE_SUPPORT_DUAL_DISPLAY && !Utils.getFolderOpenState(this, this.mIsSupportDualDisplay)) {
            showFolderOpenDialog();
            Log.d("BSS_FaceEnrollActivity", "startEnrollment fail : Not open flip");
            return;
        }
        if (this.mIsFaceManagerBinded) {
            Log.d("BSS_FaceEnrollActivity", "startEnrollment");
            this.mCancellationSignal = new CancellationSignal();
            if (this.mIsWearingGlasses) {
                this.mFaceManager.semPauseEnroll();
            }
            TextureView textureView = (TextureView) findViewById(R.id.face_preview);
            this.mTextureView = textureView;
            this.mFaceManager.enroll(this.mUserId, this.mHWToken, this.mCancellationSignal, this.mEnrollmentCallback, new int[0], textureView != null ? new Surface(textureView.getSurfaceTexture()) : null, true);
            playPunchHoleAnimation();
            showSecuredKnoxLogo();
        }
    }
}
