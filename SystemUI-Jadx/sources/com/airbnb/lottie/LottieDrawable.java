package com.airbnb.lottie;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.view.Choreographer;
import android.view.View;
import com.airbnb.lottie.RenderMode;
import com.airbnb.lottie.animation.LPaint;
import com.airbnb.lottie.manager.FontAssetManager;
import com.airbnb.lottie.manager.ImageAssetManager;
import com.airbnb.lottie.model.KeyPath;
import com.airbnb.lottie.model.KeyPathElement;
import com.airbnb.lottie.model.animatable.AnimatableTransform;
import com.airbnb.lottie.model.layer.CompositionLayer;
import com.airbnb.lottie.model.layer.Layer;
import com.airbnb.lottie.parser.LayerParser;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.airbnb.lottie.utils.Logger;
import com.airbnb.lottie.utils.LottieThreadFactory;
import com.airbnb.lottie.utils.LottieValueAnimator;
import com.airbnb.lottie.utils.MiscUtils;
import com.airbnb.lottie.value.LottieValueCallback;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.Semaphore;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class LottieDrawable extends Drawable implements Drawable.Callback, Animatable {
    public static final Executor setProgressExecutor = new ThreadPoolExecutor(0, 2, 35, TimeUnit.MILLISECONDS, new LinkedBlockingQueue(), new LottieThreadFactory());
    public int alpha;
    public final LottieValueAnimator animator;
    public AsyncUpdates asyncUpdates;
    public Rect canvasClipBounds;
    public RectF canvasClipBoundsRectF;
    public boolean clipToCompositionBounds;
    public LottieComposition composition;
    public CompositionLayer compositionLayer;
    public String defaultFontFileExtension;
    public boolean enableMergePaths;
    public FontAssetManager fontAssetManager;
    public boolean ignoreSystemAnimationsDisabled;
    public ImageAssetManager imageAssetManager;
    public String imageAssetsFolder;
    public boolean isDirty;
    public float lastDrawnProgress;
    public final ArrayList lazyCompositionTasks;
    public OnVisibleAction onVisibleAction;
    public final LottieDrawable$$ExternalSyntheticLambda0 progressUpdateListener;
    public RenderMode renderMode;
    public final Matrix renderingMatrix;
    public final Semaphore setProgressDrawLock;
    public Bitmap softwareRenderingBitmap;
    public Canvas softwareRenderingCanvas;
    public Rect softwareRenderingDstBoundsRect;
    public RectF softwareRenderingDstBoundsRectF;
    public Matrix softwareRenderingOriginalCanvasMatrix;
    public Matrix softwareRenderingOriginalCanvasMatrixInverse;
    public LPaint softwareRenderingPaint;
    public Rect softwareRenderingSrcBoundsRect;
    public RectF softwareRenderingTransformedBounds;
    public boolean systemAnimationsEnabled;
    public final LottieDrawable$$ExternalSyntheticLambda1 updateProgressRunnable;
    public boolean useSoftwareRendering;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public interface LazyCompositionTask {
        void run();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public enum OnVisibleAction {
        NONE,
        PLAY,
        RESUME
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [com.airbnb.lottie.LottieDrawable$$ExternalSyntheticLambda1] */
    /* JADX WARN: Type inference failed for: r3v6, types: [android.animation.ValueAnimator$AnimatorUpdateListener, com.airbnb.lottie.LottieDrawable$$ExternalSyntheticLambda0] */
    public LottieDrawable() {
        LottieValueAnimator lottieValueAnimator = new LottieValueAnimator();
        this.animator = lottieValueAnimator;
        this.systemAnimationsEnabled = true;
        this.ignoreSystemAnimationsDisabled = false;
        this.onVisibleAction = OnVisibleAction.NONE;
        this.lazyCompositionTasks = new ArrayList();
        this.clipToCompositionBounds = true;
        this.alpha = 255;
        this.renderMode = RenderMode.AUTOMATIC;
        this.useSoftwareRendering = false;
        this.renderingMatrix = new Matrix();
        this.asyncUpdates = AsyncUpdates.AUTOMATIC;
        ?? r3 = new ValueAnimator.AnimatorUpdateListener() { // from class: com.airbnb.lottie.LottieDrawable$$ExternalSyntheticLambda0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                boolean z;
                LottieDrawable lottieDrawable = LottieDrawable.this;
                if (lottieDrawable.asyncUpdates == AsyncUpdates.ENABLED) {
                    z = true;
                } else {
                    z = false;
                }
                if (z) {
                    lottieDrawable.invalidateSelf();
                    return;
                }
                CompositionLayer compositionLayer = lottieDrawable.compositionLayer;
                if (compositionLayer != null) {
                    compositionLayer.setProgress(lottieDrawable.animator.getAnimatedValueAbsolute());
                }
            }
        };
        this.progressUpdateListener = r3;
        this.setProgressDrawLock = new Semaphore(1);
        this.updateProgressRunnable = new Runnable() { // from class: com.airbnb.lottie.LottieDrawable$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                LottieDrawable lottieDrawable = LottieDrawable.this;
                CompositionLayer compositionLayer = lottieDrawable.compositionLayer;
                if (compositionLayer != null) {
                    try {
                        lottieDrawable.setProgressDrawLock.acquire();
                        compositionLayer.setProgress(lottieDrawable.animator.getAnimatedValueAbsolute());
                    } catch (InterruptedException unused) {
                    } catch (Throwable th) {
                        lottieDrawable.setProgressDrawLock.release();
                        throw th;
                    }
                    lottieDrawable.setProgressDrawLock.release();
                }
            }
        };
        this.lastDrawnProgress = -3.4028235E38f;
        this.isDirty = false;
        lottieValueAnimator.addUpdateListener(r3);
    }

    public static void convertRect(RectF rectF, Rect rect) {
        rect.set((int) Math.floor(rectF.left), (int) Math.floor(rectF.top), (int) Math.ceil(rectF.right), (int) Math.ceil(rectF.bottom));
    }

    public final void addValueCallback(final KeyPath keyPath, final Object obj, final LottieValueCallback lottieValueCallback) {
        CompositionLayer compositionLayer = this.compositionLayer;
        if (compositionLayer == null) {
            this.lazyCompositionTasks.add(new LazyCompositionTask() { // from class: com.airbnb.lottie.LottieDrawable$$ExternalSyntheticLambda4
                @Override // com.airbnb.lottie.LottieDrawable.LazyCompositionTask
                public final void run() {
                    LottieDrawable.this.addValueCallback(keyPath, obj, lottieValueCallback);
                }
            });
            return;
        }
        boolean z = true;
        if (keyPath == KeyPath.COMPOSITION) {
            compositionLayer.addValueCallback(lottieValueCallback, obj);
        } else {
            KeyPathElement keyPathElement = keyPath.resolvedElement;
            if (keyPathElement != null) {
                keyPathElement.addValueCallback(lottieValueCallback, obj);
            } else {
                ArrayList arrayList = new ArrayList();
                this.compositionLayer.resolveKeyPath(keyPath, 0, arrayList, new KeyPath(new String[0]));
                for (int i = 0; i < arrayList.size(); i++) {
                    ((KeyPath) arrayList.get(i)).resolvedElement.addValueCallback(lottieValueCallback, obj);
                }
                z = true ^ arrayList.isEmpty();
            }
        }
        if (z) {
            invalidateSelf();
            if (obj == LottieProperty.TIME_REMAP) {
                setProgress(this.animator.getAnimatedValueAbsolute());
            }
        }
    }

    public final boolean animationsEnabled() {
        if (!this.systemAnimationsEnabled && !this.ignoreSystemAnimationsDisabled) {
            return false;
        }
        return true;
    }

    public final void buildCompositionLayer() {
        LottieComposition lottieComposition = this.composition;
        if (lottieComposition == null) {
            return;
        }
        JsonReader.Options options = LayerParser.NAMES;
        Rect rect = lottieComposition.bounds;
        CompositionLayer compositionLayer = new CompositionLayer(this, new Layer(Collections.emptyList(), lottieComposition, "__container", -1L, Layer.LayerType.PRE_COMP, -1L, null, Collections.emptyList(), new AnimatableTransform(), 0, 0, 0, 0.0f, 0.0f, rect.width(), rect.height(), null, null, Collections.emptyList(), Layer.MatteType.NONE, null, false, null, null), lottieComposition.layers, lottieComposition);
        this.compositionLayer = compositionLayer;
        compositionLayer.clipToCompositionBounds = this.clipToCompositionBounds;
    }

    public final void clearComposition() {
        LottieValueAnimator lottieValueAnimator = this.animator;
        if (lottieValueAnimator.running) {
            lottieValueAnimator.cancel();
            if (!isVisible()) {
                this.onVisibleAction = OnVisibleAction.NONE;
            }
        }
        this.composition = null;
        this.compositionLayer = null;
        this.imageAssetManager = null;
        this.lastDrawnProgress = -3.4028235E38f;
        LottieValueAnimator lottieValueAnimator2 = this.animator;
        lottieValueAnimator2.composition = null;
        lottieValueAnimator2.minFrame = -2.14748365E9f;
        lottieValueAnimator2.maxFrame = 2.14748365E9f;
        invalidateSelf();
    }

    public final void computeRenderMode() {
        LottieComposition lottieComposition = this.composition;
        if (lottieComposition == null) {
            return;
        }
        RenderMode renderMode = this.renderMode;
        boolean z = lottieComposition.hasDashPattern;
        int i = lottieComposition.maskAndMatteCount;
        renderMode.getClass();
        int i2 = RenderMode.AnonymousClass1.$SwitchMap$com$airbnb$lottie$RenderMode[renderMode.ordinal()];
        boolean z2 = false;
        if (i2 != 1 && (i2 == 2 || i > 4)) {
            z2 = true;
        }
        this.useSoftwareRendering = z2;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x003d A[Catch: all -> 0x0184, InterruptedException -> 0x0275, TryCatch #2 {InterruptedException -> 0x0275, all -> 0x0184, blocks: (B:92:0x0012, B:10:0x0019, B:15:0x003d, B:16:0x001e, B:19:0x0046, B:21:0x004a, B:23:0x004e, B:26:0x0099, B:28:0x00c8, B:29:0x00df, B:34:0x012f, B:35:0x0142, B:39:0x0160, B:41:0x0164, B:43:0x016a, B:46:0x0173, B:48:0x017b, B:51:0x01a6, B:53:0x01aa, B:54:0x01e8, B:55:0x0187, B:56:0x0197, B:57:0x011a, B:59:0x0124, B:60:0x00d9, B:61:0x0053, B:62:0x0242, B:83:0x01f9, B:87:0x0202, B:89:0x0211, B:90:0x023b), top: B:91:0x0012 }] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x012f A[Catch: all -> 0x0184, InterruptedException -> 0x0275, TryCatch #2 {InterruptedException -> 0x0275, all -> 0x0184, blocks: (B:92:0x0012, B:10:0x0019, B:15:0x003d, B:16:0x001e, B:19:0x0046, B:21:0x004a, B:23:0x004e, B:26:0x0099, B:28:0x00c8, B:29:0x00df, B:34:0x012f, B:35:0x0142, B:39:0x0160, B:41:0x0164, B:43:0x016a, B:46:0x0173, B:48:0x017b, B:51:0x01a6, B:53:0x01aa, B:54:0x01e8, B:55:0x0187, B:56:0x0197, B:57:0x011a, B:59:0x0124, B:60:0x00d9, B:61:0x0053, B:62:0x0242, B:83:0x01f9, B:87:0x0202, B:89:0x0211, B:90:0x023b), top: B:91:0x0012 }] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x017b A[Catch: all -> 0x0184, InterruptedException -> 0x0275, TryCatch #2 {InterruptedException -> 0x0275, all -> 0x0184, blocks: (B:92:0x0012, B:10:0x0019, B:15:0x003d, B:16:0x001e, B:19:0x0046, B:21:0x004a, B:23:0x004e, B:26:0x0099, B:28:0x00c8, B:29:0x00df, B:34:0x012f, B:35:0x0142, B:39:0x0160, B:41:0x0164, B:43:0x016a, B:46:0x0173, B:48:0x017b, B:51:0x01a6, B:53:0x01aa, B:54:0x01e8, B:55:0x0187, B:56:0x0197, B:57:0x011a, B:59:0x0124, B:60:0x00d9, B:61:0x0053, B:62:0x0242, B:83:0x01f9, B:87:0x0202, B:89:0x0211, B:90:0x023b), top: B:91:0x0012 }] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x01aa A[Catch: all -> 0x0184, InterruptedException -> 0x0275, TryCatch #2 {InterruptedException -> 0x0275, all -> 0x0184, blocks: (B:92:0x0012, B:10:0x0019, B:15:0x003d, B:16:0x001e, B:19:0x0046, B:21:0x004a, B:23:0x004e, B:26:0x0099, B:28:0x00c8, B:29:0x00df, B:34:0x012f, B:35:0x0142, B:39:0x0160, B:41:0x0164, B:43:0x016a, B:46:0x0173, B:48:0x017b, B:51:0x01a6, B:53:0x01aa, B:54:0x01e8, B:55:0x0187, B:56:0x0197, B:57:0x011a, B:59:0x0124, B:60:0x00d9, B:61:0x0053, B:62:0x0242, B:83:0x01f9, B:87:0x0202, B:89:0x0211, B:90:0x023b), top: B:91:0x0012 }] */
    @Override // android.graphics.drawable.Drawable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void draw(android.graphics.Canvas r12) {
        /*
            Method dump skipped, instructions count: 658
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.airbnb.lottie.LottieDrawable.draw(android.graphics.Canvas):void");
    }

    @Override // android.graphics.drawable.Drawable
    public final int getAlpha() {
        return this.alpha;
    }

    public final FontAssetManager getFontAssetManager() {
        if (getCallback() == null) {
            return null;
        }
        if (this.fontAssetManager == null) {
            FontAssetManager fontAssetManager = new FontAssetManager(getCallback(), null);
            this.fontAssetManager = fontAssetManager;
            String str = this.defaultFontFileExtension;
            if (str != null) {
                fontAssetManager.defaultFontFileExtension = str;
            }
        }
        return this.fontAssetManager;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        LottieComposition lottieComposition = this.composition;
        if (lottieComposition == null) {
            return -1;
        }
        return lottieComposition.bounds.height();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        LottieComposition lottieComposition = this.composition;
        if (lottieComposition == null) {
            return -1;
        }
        return lottieComposition.bounds.width();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void invalidateDrawable(Drawable drawable) {
        Drawable.Callback callback = getCallback();
        if (callback == null) {
            return;
        }
        callback.invalidateDrawable(this);
    }

    @Override // android.graphics.drawable.Drawable
    public final void invalidateSelf() {
        if (this.isDirty) {
            return;
        }
        this.isDirty = true;
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.invalidateDrawable(this);
        }
    }

    @Override // android.graphics.drawable.Animatable
    public final boolean isRunning() {
        LottieValueAnimator lottieValueAnimator = this.animator;
        if (lottieValueAnimator == null) {
            return false;
        }
        return lottieValueAnimator.running;
    }

    public final void pauseAnimation() {
        this.lazyCompositionTasks.clear();
        LottieValueAnimator lottieValueAnimator = this.animator;
        lottieValueAnimator.removeFrameCallback(true);
        Iterator it = ((CopyOnWriteArraySet) lottieValueAnimator.pauseListeners).iterator();
        while (it.hasNext()) {
            ((Animator.AnimatorPauseListener) it.next()).onAnimationPause(lottieValueAnimator);
        }
        if (!isVisible()) {
            this.onVisibleAction = OnVisibleAction.NONE;
        }
    }

    public final void playAnimation() {
        float minFrame;
        float maxFrame;
        if (this.compositionLayer == null) {
            this.lazyCompositionTasks.add(new LottieDrawable$$ExternalSyntheticLambda3(this, 1));
            return;
        }
        computeRenderMode();
        if (animationsEnabled() || this.animator.getRepeatCount() == 0) {
            if (isVisible()) {
                LottieValueAnimator lottieValueAnimator = this.animator;
                lottieValueAnimator.running = true;
                boolean isReversed = lottieValueAnimator.isReversed();
                Iterator it = ((CopyOnWriteArraySet) lottieValueAnimator.listeners).iterator();
                while (it.hasNext()) {
                    ((Animator.AnimatorListener) it.next()).onAnimationStart(lottieValueAnimator, isReversed);
                }
                if (lottieValueAnimator.isReversed()) {
                    minFrame = lottieValueAnimator.getMaxFrame();
                } else {
                    minFrame = lottieValueAnimator.getMinFrame();
                }
                lottieValueAnimator.setFrame((int) minFrame);
                lottieValueAnimator.lastFrameTimeNs = 0L;
                lottieValueAnimator.repeatCount = 0;
                if (lottieValueAnimator.running) {
                    lottieValueAnimator.removeFrameCallback(false);
                    Choreographer.getInstance().postFrameCallback(lottieValueAnimator);
                }
                this.onVisibleAction = OnVisibleAction.NONE;
            } else {
                this.onVisibleAction = OnVisibleAction.PLAY;
            }
        }
        if (!animationsEnabled()) {
            LottieValueAnimator lottieValueAnimator2 = this.animator;
            if (lottieValueAnimator2.speed < 0.0f) {
                maxFrame = lottieValueAnimator2.getMinFrame();
            } else {
                maxFrame = lottieValueAnimator2.getMaxFrame();
            }
            setFrame((int) maxFrame);
            LottieValueAnimator lottieValueAnimator3 = this.animator;
            lottieValueAnimator3.removeFrameCallback(true);
            lottieValueAnimator3.notifyEnd(lottieValueAnimator3.isReversed());
            if (!isVisible()) {
                this.onVisibleAction = OnVisibleAction.NONE;
            }
        }
    }

    public final void resumeAnimation() {
        float maxFrame;
        if (this.compositionLayer == null) {
            this.lazyCompositionTasks.add(new LottieDrawable$$ExternalSyntheticLambda3(this, 0));
            return;
        }
        computeRenderMode();
        if (animationsEnabled() || this.animator.getRepeatCount() == 0) {
            if (isVisible()) {
                LottieValueAnimator lottieValueAnimator = this.animator;
                lottieValueAnimator.running = true;
                lottieValueAnimator.removeFrameCallback(false);
                Choreographer.getInstance().postFrameCallback(lottieValueAnimator);
                lottieValueAnimator.lastFrameTimeNs = 0L;
                if (lottieValueAnimator.isReversed() && lottieValueAnimator.frame == lottieValueAnimator.getMinFrame()) {
                    lottieValueAnimator.setFrame(lottieValueAnimator.getMaxFrame());
                } else if (!lottieValueAnimator.isReversed() && lottieValueAnimator.frame == lottieValueAnimator.getMaxFrame()) {
                    lottieValueAnimator.setFrame(lottieValueAnimator.getMinFrame());
                }
                Iterator it = ((CopyOnWriteArraySet) lottieValueAnimator.pauseListeners).iterator();
                while (it.hasNext()) {
                    ((Animator.AnimatorPauseListener) it.next()).onAnimationResume(lottieValueAnimator);
                }
                this.onVisibleAction = OnVisibleAction.NONE;
            } else {
                this.onVisibleAction = OnVisibleAction.RESUME;
            }
        }
        if (!animationsEnabled()) {
            LottieValueAnimator lottieValueAnimator2 = this.animator;
            if (lottieValueAnimator2.speed < 0.0f) {
                maxFrame = lottieValueAnimator2.getMinFrame();
            } else {
                maxFrame = lottieValueAnimator2.getMaxFrame();
            }
            setFrame((int) maxFrame);
            LottieValueAnimator lottieValueAnimator3 = this.animator;
            lottieValueAnimator3.removeFrameCallback(true);
            lottieValueAnimator3.notifyEnd(lottieValueAnimator3.isReversed());
            if (!isVisible()) {
                this.onVisibleAction = OnVisibleAction.NONE;
            }
        }
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        Drawable.Callback callback = getCallback();
        if (callback == null) {
            return;
        }
        callback.scheduleDrawable(this, runnable, j);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        this.alpha = i;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        Logger.warning("Use addColorFilter instead.");
    }

    public final void setFrame(int i) {
        if (this.composition == null) {
            this.lazyCompositionTasks.add(new LottieDrawable$$ExternalSyntheticLambda6(this, i, 0));
        } else {
            this.animator.setFrame(i);
        }
    }

    public final void setMaxFrame(int i) {
        if (this.composition == null) {
            this.lazyCompositionTasks.add(new LottieDrawable$$ExternalSyntheticLambda6(this, i, 2));
            return;
        }
        LottieValueAnimator lottieValueAnimator = this.animator;
        lottieValueAnimator.setMinAndMaxFrames(lottieValueAnimator.minFrame, i + 0.99f);
    }

    public final void setProgress(final float f) {
        LottieComposition lottieComposition = this.composition;
        if (lottieComposition == null) {
            this.lazyCompositionTasks.add(new LazyCompositionTask() { // from class: com.airbnb.lottie.LottieDrawable$$ExternalSyntheticLambda2
                @Override // com.airbnb.lottie.LottieDrawable.LazyCompositionTask
                public final void run() {
                    LottieDrawable.this.setProgress(f);
                }
            });
            return;
        }
        LottieValueAnimator lottieValueAnimator = this.animator;
        float f2 = lottieComposition.startFrame;
        float f3 = lottieComposition.endFrame;
        PointF pointF = MiscUtils.pathFromDataCurrentPoint;
        lottieValueAnimator.setFrame(((f3 - f2) * f) + f2);
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean setVisible(boolean z, boolean z2) {
        boolean z3 = !isVisible();
        boolean visible = super.setVisible(z, z2);
        if (z) {
            OnVisibleAction onVisibleAction = this.onVisibleAction;
            if (onVisibleAction == OnVisibleAction.PLAY) {
                playAnimation();
            } else if (onVisibleAction == OnVisibleAction.RESUME) {
                resumeAnimation();
            }
        } else if (this.animator.running) {
            pauseAnimation();
            this.onVisibleAction = OnVisibleAction.RESUME;
        } else if (!z3) {
            this.onVisibleAction = OnVisibleAction.NONE;
        }
        return visible;
    }

    @Override // android.graphics.drawable.Animatable
    public final void start() {
        Drawable.Callback callback = getCallback();
        if ((callback instanceof View) && ((View) callback).isInEditMode()) {
            return;
        }
        playAnimation();
    }

    @Override // android.graphics.drawable.Animatable
    public final void stop() {
        this.lazyCompositionTasks.clear();
        LottieValueAnimator lottieValueAnimator = this.animator;
        lottieValueAnimator.removeFrameCallback(true);
        lottieValueAnimator.notifyEnd(lottieValueAnimator.isReversed());
        if (!isVisible()) {
            this.onVisibleAction = OnVisibleAction.NONE;
        }
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        Drawable.Callback callback = getCallback();
        if (callback == null) {
            return;
        }
        callback.unscheduleDrawable(this, runnable);
    }
}
