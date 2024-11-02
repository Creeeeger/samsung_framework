package android.graphics.drawable;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.CanvasProperty;
import android.graphics.Paint;
import android.graphics.RecordingCanvas;
import android.graphics.animation.RenderNodeAnimator;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import android.view.animation.PathInterpolator;
import java.util.function.Consumer;

/* loaded from: classes.dex */
public final class RippleAnimationSession {
    private static final int ENTER_ANIM_DURATION = 450;
    private static final int EXIT_ANIM_DURATION = 375;
    private static final long MAX_NOISE_PHASE = 32;
    private static final long NOISE_ANIMATION_DURATION = 7000;
    private static final String TAG = "RippleAnimationSession";
    private AnimationProperties<CanvasProperty<Float>, CanvasProperty<Paint>> mCanvasProperties;
    private Animator mCurrentAnimation;
    private boolean mForceSoftware;
    private Animator mLoopAnimation;
    private Consumer<RippleAnimationSession> mOnSessionEnd;
    private Runnable mOnUpdate;
    private final AnimationProperties<Float, Paint> mProperties;
    private long mStartTime;
    private static final TimeInterpolator LINEAR_INTERPOLATOR = new LinearInterpolator();
    private static final Interpolator FAST_OUT_SLOW_IN = new PathInterpolator(0.4f, 0.0f, 0.2f, 1.0f);

    public RippleAnimationSession(AnimationProperties<Float, Paint> properties, boolean forceSoftware) {
        this.mProperties = properties;
        this.mForceSoftware = forceSoftware;
    }

    public boolean isForceSoftware() {
        return this.mForceSoftware;
    }

    public RippleAnimationSession enter(Canvas canvas) {
        this.mStartTime = AnimationUtils.currentAnimationTimeMillis();
        if (useRTAnimations(canvas)) {
            enterHardware((RecordingCanvas) canvas);
        } else {
            enterSoftware();
        }
        return this;
    }

    public void end() {
        Animator animator = this.mCurrentAnimation;
        if (animator != null) {
            animator.end();
        }
    }

    public RippleAnimationSession exit(Canvas canvas) {
        if (useRTAnimations(canvas)) {
            exitHardware((RecordingCanvas) canvas);
        } else {
            exitSoftware();
        }
        return this;
    }

    public void onAnimationEnd(Animator anim) {
        notifyUpdate();
    }

    public RippleAnimationSession setOnSessionEnd(Consumer<RippleAnimationSession> onSessionEnd) {
        this.mOnSessionEnd = onSessionEnd;
        return this;
    }

    public RippleAnimationSession setOnAnimationUpdated(Runnable run) {
        this.mOnUpdate = run;
        return this;
    }

    private boolean useRTAnimations(Canvas canvas) {
        if (this.mForceSoftware || !canvas.isHardwareAccelerated()) {
            return false;
        }
        RecordingCanvas hwCanvas = (RecordingCanvas) canvas;
        return hwCanvas.mNode != null && hwCanvas.mNode.isAttached();
    }

    private void exitSoftware() {
        final ValueAnimator expand = ValueAnimator.ofFloat(0.5f, 1.0f);
        expand.setDuration(375L);
        expand.setStartDelay(computeDelay());
        expand.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: android.graphics.drawable.RippleAnimationSession$$ExternalSyntheticLambda0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                RippleAnimationSession.this.lambda$exitSoftware$0(expand, valueAnimator);
            }
        });
        expand.addListener(new AnimatorListener(this) { // from class: android.graphics.drawable.RippleAnimationSession.1
            final /* synthetic */ ValueAnimator val$expand;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass1(RippleAnimationSession this, final ValueAnimator expand2) {
                super(this);
                expand = expand2;
            }

            @Override // android.graphics.drawable.RippleAnimationSession.AnimatorListener, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animation) {
                super.onAnimationEnd(animation);
                if (RippleAnimationSession.this.mLoopAnimation != null) {
                    RippleAnimationSession.this.mLoopAnimation.cancel();
                }
                Consumer<RippleAnimationSession> onEnd = RippleAnimationSession.this.mOnSessionEnd;
                if (onEnd != null) {
                    onEnd.accept(RippleAnimationSession.this);
                }
                if (RippleAnimationSession.this.mCurrentAnimation == expand) {
                    RippleAnimationSession.this.mCurrentAnimation = null;
                }
            }
        });
        expand2.setInterpolator(LINEAR_INTERPOLATOR);
        expand2.start();
        this.mCurrentAnimation = expand2;
    }

    public /* synthetic */ void lambda$exitSoftware$0(ValueAnimator expand, ValueAnimator updatedAnimation) {
        notifyUpdate();
        this.mProperties.getShader().setProgress(((Float) expand.getAnimatedValue()).floatValue());
    }

    /* renamed from: android.graphics.drawable.RippleAnimationSession$1 */
    /* loaded from: classes.dex */
    public class AnonymousClass1 extends AnimatorListener {
        final /* synthetic */ ValueAnimator val$expand;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(RippleAnimationSession this, final ValueAnimator expand2) {
            super(this);
            expand = expand2;
        }

        @Override // android.graphics.drawable.RippleAnimationSession.AnimatorListener, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animation) {
            super.onAnimationEnd(animation);
            if (RippleAnimationSession.this.mLoopAnimation != null) {
                RippleAnimationSession.this.mLoopAnimation.cancel();
            }
            Consumer<RippleAnimationSession> onEnd = RippleAnimationSession.this.mOnSessionEnd;
            if (onEnd != null) {
                onEnd.accept(RippleAnimationSession.this);
            }
            if (RippleAnimationSession.this.mCurrentAnimation == expand) {
                RippleAnimationSession.this.mCurrentAnimation = null;
            }
        }
    }

    private long computeDelay() {
        long timePassed = AnimationUtils.currentAnimationTimeMillis() - this.mStartTime;
        return Math.max(450 - timePassed, 0L);
    }

    private void notifyUpdate() {
        Runnable runnable = this.mOnUpdate;
        if (runnable != null) {
            runnable.run();
        }
    }

    public RippleAnimationSession setForceSoftwareAnimation(boolean forceSw) {
        this.mForceSoftware = forceSw;
        return this;
    }

    private void exitHardware(RecordingCanvas canvas) {
        AnimationProperties<CanvasProperty<Float>, CanvasProperty<Paint>> props = getCanvasProperties();
        RenderNodeAnimator exit = new RenderNodeAnimator(props.getProgress(), 1.0f);
        exit.setDuration(375L);
        exit.addListener(new AnimatorListener(this) { // from class: android.graphics.drawable.RippleAnimationSession.2
            final /* synthetic */ RenderNodeAnimator val$exit;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass2(RippleAnimationSession this, RenderNodeAnimator exit2) {
                super(this);
                exit = exit2;
            }

            @Override // android.graphics.drawable.RippleAnimationSession.AnimatorListener, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animation) {
                super.onAnimationEnd(animation);
                if (RippleAnimationSession.this.mLoopAnimation != null) {
                    RippleAnimationSession.this.mLoopAnimation.cancel();
                }
                Consumer<RippleAnimationSession> onEnd = RippleAnimationSession.this.mOnSessionEnd;
                if (onEnd != null) {
                    onEnd.accept(RippleAnimationSession.this);
                }
                if (RippleAnimationSession.this.mCurrentAnimation == exit) {
                    RippleAnimationSession.this.mCurrentAnimation = null;
                }
            }
        });
        exit2.setTarget(canvas);
        exit2.setInterpolator(LINEAR_INTERPOLATOR);
        long delay = computeDelay();
        exit2.setStartDelay(delay);
        exit2.start();
        this.mCurrentAnimation = exit2;
    }

    /* renamed from: android.graphics.drawable.RippleAnimationSession$2 */
    /* loaded from: classes.dex */
    public class AnonymousClass2 extends AnimatorListener {
        final /* synthetic */ RenderNodeAnimator val$exit;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(RippleAnimationSession this, RenderNodeAnimator exit2) {
            super(this);
            exit = exit2;
        }

        @Override // android.graphics.drawable.RippleAnimationSession.AnimatorListener, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animation) {
            super.onAnimationEnd(animation);
            if (RippleAnimationSession.this.mLoopAnimation != null) {
                RippleAnimationSession.this.mLoopAnimation.cancel();
            }
            Consumer<RippleAnimationSession> onEnd = RippleAnimationSession.this.mOnSessionEnd;
            if (onEnd != null) {
                onEnd.accept(RippleAnimationSession.this);
            }
            if (RippleAnimationSession.this.mCurrentAnimation == exit) {
                RippleAnimationSession.this.mCurrentAnimation = null;
            }
        }
    }

    private void enterHardware(RecordingCanvas canvas) {
        AnimationProperties<CanvasProperty<Float>, CanvasProperty<Paint>> props = getCanvasProperties();
        RenderNodeAnimator expand = new RenderNodeAnimator(props.getProgress(), 0.5f);
        expand.setTarget(canvas);
        RenderNodeAnimator loop = new RenderNodeAnimator(props.getNoisePhase(), (float) (this.mStartTime + 32));
        loop.setTarget(canvas);
        startAnimation(expand, loop);
        this.mCurrentAnimation = expand;
    }

    private void startAnimation(Animator expand, Animator loop) {
        expand.setDuration(450L);
        expand.addListener(new AnimatorListener(this));
        expand.setInterpolator(FAST_OUT_SLOW_IN);
        expand.start();
        loop.setDuration(NOISE_ANIMATION_DURATION);
        loop.addListener(new AnimatorListener(this) { // from class: android.graphics.drawable.RippleAnimationSession.3
            AnonymousClass3(RippleAnimationSession this) {
                super(this);
            }

            @Override // android.graphics.drawable.RippleAnimationSession.AnimatorListener, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animation) {
                super.onAnimationEnd(animation);
                RippleAnimationSession.this.mLoopAnimation = null;
            }
        });
        loop.setInterpolator(LINEAR_INTERPOLATOR);
        loop.start();
        Animator animator = this.mLoopAnimation;
        if (animator != null) {
            animator.cancel();
        }
        this.mLoopAnimation = loop;
    }

    /* renamed from: android.graphics.drawable.RippleAnimationSession$3 */
    /* loaded from: classes.dex */
    public class AnonymousClass3 extends AnimatorListener {
        AnonymousClass3(RippleAnimationSession this) {
            super(this);
        }

        @Override // android.graphics.drawable.RippleAnimationSession.AnimatorListener, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animation) {
            super.onAnimationEnd(animation);
            RippleAnimationSession.this.mLoopAnimation = null;
        }
    }

    private void enterSoftware() {
        final ValueAnimator expand = ValueAnimator.ofFloat(0.0f, 0.5f);
        expand.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: android.graphics.drawable.RippleAnimationSession$$ExternalSyntheticLambda1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                RippleAnimationSession.this.lambda$enterSoftware$1(expand, valueAnimator);
            }
        });
        long j = this.mStartTime;
        final ValueAnimator loop = ValueAnimator.ofFloat((float) j, (float) (j + 32));
        loop.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: android.graphics.drawable.RippleAnimationSession$$ExternalSyntheticLambda2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                RippleAnimationSession.this.lambda$enterSoftware$2(loop, valueAnimator);
            }
        });
        startAnimation(expand, loop);
        this.mCurrentAnimation = expand;
    }

    public /* synthetic */ void lambda$enterSoftware$1(ValueAnimator expand, ValueAnimator updatedAnimation) {
        notifyUpdate();
        this.mProperties.getShader().setProgress(((Float) expand.getAnimatedValue()).floatValue());
    }

    public /* synthetic */ void lambda$enterSoftware$2(ValueAnimator loop, ValueAnimator updatedAnimation) {
        notifyUpdate();
        this.mProperties.getShader().setNoisePhase(((Float) loop.getAnimatedValue()).floatValue());
    }

    public void setRadius(float radius) {
        this.mProperties.setRadius(Float.valueOf(radius));
        this.mProperties.getShader().setRadius(radius);
        AnimationProperties<CanvasProperty<Float>, CanvasProperty<Paint>> animationProperties = this.mCanvasProperties;
        if (animationProperties != null) {
            animationProperties.setRadius(CanvasProperty.createFloat(radius));
            this.mCanvasProperties.getShader().setRadius(radius);
        }
    }

    public AnimationProperties<Float, Paint> getProperties() {
        return this.mProperties;
    }

    public AnimationProperties<CanvasProperty<Float>, CanvasProperty<Paint>> getCanvasProperties() {
        if (this.mCanvasProperties == null) {
            this.mCanvasProperties = new AnimationProperties<>(CanvasProperty.createFloat(this.mProperties.getX().floatValue()), CanvasProperty.createFloat(this.mProperties.getY().floatValue()), CanvasProperty.createFloat(this.mProperties.getMaxRadius().floatValue()), CanvasProperty.createFloat(this.mProperties.getNoisePhase().floatValue()), CanvasProperty.createPaint(this.mProperties.getPaint()), CanvasProperty.createFloat(this.mProperties.getProgress().floatValue()), this.mProperties.getColor(), this.mProperties.getShader());
        }
        return this.mCanvasProperties;
    }

    /* loaded from: classes.dex */
    public static class AnimatorListener implements Animator.AnimatorListener {
        private final RippleAnimationSession mSession;

        AnimatorListener(RippleAnimationSession session) {
            this.mSession = session;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animation) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animation) {
            this.mSession.onAnimationEnd(animation);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animation) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animation) {
        }
    }

    /* loaded from: classes.dex */
    public static class AnimationProperties<FloatType, PaintType> {
        private final int mColor;
        private FloatType mMaxRadius;
        private final FloatType mNoisePhase;
        private final PaintType mPaint;
        private final FloatType mProgress;
        private final RippleShader mShader;
        private FloatType mX;
        private FloatType mY;

        public AnimationProperties(FloatType x, FloatType y, FloatType maxRadius, FloatType noisePhase, PaintType paint, FloatType progress, int color, RippleShader shader) {
            this.mY = y;
            this.mX = x;
            this.mMaxRadius = maxRadius;
            this.mNoisePhase = noisePhase;
            this.mPaint = paint;
            this.mShader = shader;
            this.mProgress = progress;
            this.mColor = color;
        }

        public FloatType getProgress() {
            return this.mProgress;
        }

        void setRadius(FloatType radius) {
            this.mMaxRadius = radius;
        }

        public void setOrigin(FloatType x, FloatType y) {
            this.mX = x;
            this.mY = y;
        }

        public FloatType getX() {
            return this.mX;
        }

        public FloatType getY() {
            return this.mY;
        }

        public FloatType getMaxRadius() {
            return this.mMaxRadius;
        }

        public PaintType getPaint() {
            return this.mPaint;
        }

        public RippleShader getShader() {
            return this.mShader;
        }

        public FloatType getNoisePhase() {
            return this.mNoisePhase;
        }

        public int getColor() {
            return this.mColor;
        }
    }
}
