package com.samsung.android.biometrics.app.setting.fingerprint.vi;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.Point;
import android.os.Handler;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Pair;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.airbnb.lottie.LottieAnimationView;
import com.airbnb.lottie.RenderMode;
import com.android.internal.annotations.VisibleForTesting;
import com.samsung.android.biometrics.app.setting.Utils;
import com.samsung.android.biometrics.app.setting.fingerprint.UdfpsInfo;
import com.samsung.android.biometrics.app.setting.fingerprint.UdfpsKeyguardSensorWindow;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@SuppressLint({"ViewConstructor"})
/* loaded from: classes.dex */
public class VisualEffectContainer extends FrameLayout {

    @VisibleForTesting
    static final String ASSET_NAME_OPTICAL_GREEN = "indisplay_fingerprint_touch_effect_green_circle.json";

    @VisibleForTesting
    static final String ASSET_NAME_OPTICAL_WHITE = "indisplay_fingerprint_touch_effect_white_circle.json";

    @VisibleForTesting
    static final String ASSET_NAME_ULTRASONIC = "indisplay_fingerprint_touch_effect_ripple.json";
    private long mAnimationDuration;
    private Callback mCallback;
    private final Context mContext;

    @VisibleForTesting
    LottieAnimationView mEffectAnimationView;
    List<Pair<View, Animation>> mEffectViews;
    private final Handler mHandler;
    private boolean mIsReadTouchMap;
    private Thread mReadTouchMapThread;
    private UdfpsInfo mSensorInfo;
    private final VisualEffectContainer$$ExternalSyntheticLambda0 mStartCallback;
    private final VisualEffectContainer$$ExternalSyntheticLambda0 mStopCallback;
    private final SemVisualEffectTouchMap mTouchMap;
    private long mTouchMapStartTime;

    public interface Callback {
    }

    class SemVisualEffectTouchMap {
        private int[][] mCheckArray;
        private Path mEffectPath;
        private final TouchMapReader mTouchMapReader;
        private int mWidth = 0;
        private int mHeight = 0;
        private final int[] EDGE_X = {0, 1, 1, 0};
        private final int[] EDGE_Y = {0, 0, 1, 1};
        private final int[] SEARCH_X = {0, 1, 0, -1};
        private final int[] SEARCH_Y = {-1, 0, 1, 0};

        SemVisualEffectTouchMap(Context context) {
            this.mTouchMapReader = new TouchMapReader(context);
        }

        private static Path calculateClipOutPath(ArrayList arrayList) {
            Path path = new Path();
            if (arrayList.size() >= 3) {
                int size = arrayList.size();
                int i = 0;
                while (i < size) {
                    float[] fArr = (float[]) arrayList.get(i % size);
                    int i2 = i + 1;
                    float[] fArr2 = (float[]) arrayList.get(i2 % size);
                    float[] fArr3 = (float[]) arrayList.get((i + 2) % size);
                    if (i == 0) {
                        path.moveTo((fArr[0] + fArr2[0]) / 2.0f, (fArr[1] + fArr2[1]) / 2.0f);
                    }
                    float f = fArr[0];
                    float f2 = fArr2[0];
                    float f3 = (f + f2) / 2.0f;
                    float f4 = fArr[1];
                    float f5 = fArr2[1];
                    path.cubicTo(f3, (f4 + f5) / 2.0f, f2, f5, (fArr3[0] + f2) / 2.0f, (fArr3[1] + f5) / 2.0f);
                    i = i2;
                }
                path.close();
            }
            return path;
        }

        /* JADX WARN: Code restructure failed: missing block: B:36:0x00ca, code lost:
        
            if (r5 < 0) goto L41;
         */
        /* JADX WARN: Code restructure failed: missing block: B:38:0x00cd, code lost:
        
            if (r4 >= r20.length) goto L41;
         */
        /* JADX WARN: Code restructure failed: missing block: B:40:0x00d2, code lost:
        
            if (r5 < r20[0].length) goto L40;
         */
        /* JADX WARN: Code restructure failed: missing block: B:41:0x00d5, code lost:
        
            r17 = 5;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        private java.util.ArrayList<float[]> getOuterLine(int[][] r20) {
            /*
                Method dump skipped, instructions count: 468
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.samsung.android.biometrics.app.setting.fingerprint.vi.VisualEffectContainer.SemVisualEffectTouchMap.getOuterLine(int[][]):java.util.ArrayList");
        }

        private void searchNeighborBlock(ArrayList<Point> arrayList, int[][] iArr, int i, int i2, int i3) {
            int[] iArr2 = this.mCheckArray[i2];
            if (iArr2[i] == 1) {
                return;
            }
            iArr2[i] = 1;
            for (int i4 = 0; i4 < 4; i4++) {
                int i5 = (i3 + i4) % 4;
                int i6 = i2 + this.EDGE_Y[i5];
                int i7 = i + this.EDGE_X[i5];
                int i8 = i + this.SEARCH_X[i5];
                int i9 = i2 + this.SEARCH_Y[i5];
                if (iArr[i2][i] == 1 && (i9 < 0 || i8 < 0 || i9 >= iArr.length || i8 >= iArr[0].length || iArr[i9][i8] == 0)) {
                    if (i9 >= 0 && i8 > 0 && i9 < iArr.length && i8 < iArr[0].length) {
                        this.mCheckArray[i9][i8] = 1;
                    }
                    arrayList.add(new Point(i7, i6));
                } else if (this.mCheckArray[i9][i8] != 1) {
                    searchNeighborBlock(arrayList, iArr, i8, i9, ((i5 - 1) + 4) % 4);
                }
            }
        }

        final void setClipOutPath(Canvas canvas) {
            Path path;
            if (canvas == null || (path = this.mEffectPath) == null || path.isEmpty()) {
                return;
            }
            canvas.clipOutPath(this.mEffectPath);
        }

        final void setScreenSize(int i, int i2) {
            this.mWidth = i;
            this.mHeight = i2;
        }

        final synchronized void updateTouchMapFromFile() {
            if (this.mWidth != 0 && this.mHeight != 0) {
                int[][] readTouchMatrix = this.mTouchMapReader.readTouchMatrix();
                if (readTouchMatrix != null) {
                    this.mEffectPath = calculateClipOutPath(getOuterLine(readTouchMatrix));
                }
            }
        }
    }

    public static void $r8$lambda$WeunE3xHFN40gEF93fT2dO74a8M(VisualEffectContainer visualEffectContainer) {
        visualEffectContainer.getClass();
        Log.i("BSS_VisualEffectContainer", "start()");
        Iterator it = ((ArrayList) visualEffectContainer.mEffectViews).iterator();
        while (it.hasNext()) {
            Pair pair = (Pair) it.next();
            Object obj = pair.first;
            if (obj instanceof LottieAnimationView) {
                visualEffectContainer.mEffectAnimationView.setRenderMode(RenderMode.HARDWARE);
                visualEffectContainer.mEffectAnimationView.setFrame(0);
                if (!visualEffectContainer.mEffectAnimationView.isAnimating()) {
                    visualEffectContainer.mEffectAnimationView.playAnimation();
                }
            } else if (obj instanceof ImageView) {
                ((View) obj).startAnimation((Animation) pair.second);
            }
        }
        visualEffectContainer.mHandler.removeCallbacks(visualEffectContainer.mStartCallback);
        visualEffectContainer.mHandler.removeCallbacks(visualEffectContainer.mStopCallback);
        visualEffectContainer.mHandler.postDelayed(visualEffectContainer.mStopCallback, visualEffectContainer.mAnimationDuration);
        visualEffectContainer.mIsReadTouchMap = true;
        visualEffectContainer.mTouchMapStartTime = SystemClock.elapsedRealtime();
        if (visualEffectContainer.mReadTouchMapThread == null) {
            Thread thread = new Thread(new VisualEffectContainer$$ExternalSyntheticLambda0(visualEffectContainer, 2));
            visualEffectContainer.mReadTouchMapThread = thread;
            thread.start();
        }
        visualEffectContainer.updateLayout();
        visualEffectContainer.setVisibility(0);
    }

    public static /* synthetic */ void $r8$lambda$dhyVIR_QGXGm73WdU7zAnLLfbLQ(VisualEffectContainer visualEffectContainer) {
        while (visualEffectContainer.mTouchMap != null && visualEffectContainer.mIsReadTouchMap && SystemClock.elapsedRealtime() - visualEffectContainer.mTouchMapStartTime < 2000) {
            try {
                visualEffectContainer.mTouchMap.updateTouchMapFromFile();
                visualEffectContainer.mHandler.post(new VisualEffectContainer$$ExternalSyntheticLambda0(visualEffectContainer, 3));
                Thread.sleep(30L);
            } catch (InterruptedException unused) {
            }
        }
        visualEffectContainer.mReadTouchMapThread = null;
    }

    public VisualEffectContainer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mTouchMapStartTime = 0L;
        this.mAnimationDuration = 1000L;
        this.mStartCallback = new VisualEffectContainer$$ExternalSyntheticLambda0(this, 0);
        this.mStopCallback = new VisualEffectContainer$$ExternalSyntheticLambda0(this, 1);
        this.mContext = context;
        this.mHandler = new Handler(context.getMainLooper());
        this.mTouchMap = new SemVisualEffectTouchMap(context);
        this.mEffectViews = new ArrayList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void stopVI() {
        Log.i("BSS_VisualEffectContainer", "stop()");
        this.mIsReadTouchMap = false;
        LottieAnimationView lottieAnimationView = this.mEffectAnimationView;
        if (lottieAnimationView != null) {
            lottieAnimationView.setRenderMode(RenderMode.SOFTWARE);
        }
        setVisibility(4);
        disableTouchMapUpdate();
        Callback callback = this.mCallback;
        if (callback != null) {
            ((UdfpsKeyguardSensorWindow) callback).onEffectFinished();
        }
    }

    private void updateLayout() {
        UdfpsInfo udfpsInfo = this.mSensorInfo;
        if (udfpsInfo == null) {
            return;
        }
        int areaHeight = udfpsInfo.getAreaHeight();
        int marginBottom = this.mSensorInfo.getMarginBottom();
        int i = Utils.getDisplaySize(this.mContext).x;
        int i2 = (int) ((areaHeight / 2.0f) + (i / 2.0f) + marginBottom);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) getLayoutParams();
        layoutParams.width = i;
        layoutParams.height = i2;
        layoutParams.gravity = 81;
        setLayoutParams(layoutParams);
        requestLayout();
        int applyDimension = (int) TypedValue.applyDimension(1, 400.0f, Utils.getDisplayMetrics(this.mContext));
        Iterator it = ((ArrayList) this.mEffectViews).iterator();
        while (it.hasNext()) {
            Pair pair = (Pair) it.next();
            ViewGroup.LayoutParams layoutParams2 = ((View) pair.first).getLayoutParams();
            layoutParams2.height = applyDimension;
            layoutParams2.width = applyDimension;
            ((View) pair.first).setLayoutParams(layoutParams2);
        }
    }

    public final void disableTouchMapUpdate() {
        this.mIsReadTouchMap = false;
        invalidate();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchConfigurationChanged(Configuration configuration) {
        super.dispatchConfigurationChanged(configuration);
        updateLayout();
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x00c6  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00da  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void init(com.samsung.android.biometrics.app.setting.fingerprint.UdfpsInfo r7, com.samsung.android.biometrics.app.setting.fingerprint.vi.VisualEffectContainer.Callback r8) {
        /*
            Method dump skipped, instructions count: 365
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.samsung.android.biometrics.app.setting.fingerprint.vi.VisualEffectContainer.init(com.samsung.android.biometrics.app.setting.fingerprint.UdfpsInfo, com.samsung.android.biometrics.app.setting.fingerprint.vi.VisualEffectContainer$Callback):void");
    }

    @Override // android.view.View
    protected final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        UdfpsInfo udfpsInfo = this.mSensorInfo;
        if (udfpsInfo != null) {
            int areaHeight = udfpsInfo.getAreaHeight();
            int marginBottom = this.mSensorInfo.getMarginBottom();
            float width = (getWidth() / 2.0f) + this.mSensorInfo.getMarginLeft();
            float height = getHeight() - ((areaHeight / 2.0f) + marginBottom);
            Iterator it = ((ArrayList) this.mEffectViews).iterator();
            while (it.hasNext()) {
                Pair pair = (Pair) it.next();
                ((View) pair.first).setTranslationX(((int) width) - (r4.getWidth() / 2.0f));
                ((View) pair.first).setTranslationY(((int) height) - (r1.getHeight() / 2.0f));
            }
        }
        if (this.mIsReadTouchMap) {
            this.mTouchMap.setClipOutPath(canvas);
        }
    }

    public final void start() {
        this.mHandler.post(this.mStartCallback);
    }

    public final void stop() {
        this.mCallback = null;
        this.mHandler.removeCallbacks(this.mStartCallback);
        this.mHandler.removeCallbacks(this.mStopCallback);
        stopVI();
        removeAllViews();
    }

    public final void updateDisplayChanged() {
        updateLayout();
    }
}
