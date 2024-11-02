package com.samsung.android.nexus.particle.emitter;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import com.samsung.android.nexus.base.layer.LayerContainer;
import com.samsung.android.nexus.base.utils.Log;
import com.samsung.android.nexus.base.utils.range.LongRangeable;
import com.samsung.android.nexus.particle.emitter.Particle;
import com.samsung.android.nexus.particle.emitter.texture.ParticleTexture;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class World {
    public static final boolean DEBUG_ANY = false;
    public static final long DEBUG_UPDATE_DELAY;
    public static long sDebugUpdateTime;
    public final LayerContainer mContainer;
    public final FrameController mFrameController;
    public final Emitter mRootEmitter;
    public final Particle mRootParticle;
    public boolean mIsPaused = true;
    public boolean mIsRunning = false;
    public long mStartedTime = 0;
    public long mLastStepTime = 0;
    public long mPausedTime = 0;
    public long mTotalPausedTime = 0;
    public final Status mWorldStatus = new Status();
    public final WorldParticleLinkedList mWorldParticleLinkedList = new WorldParticleLinkedList();

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes3.dex */
    public final class WorldParticleLinkedList extends Particle.ParticleLinkedList {
        private WorldParticleLinkedList() {
        }
    }

    static {
        Paint paint = new Paint();
        DEBUG_UPDATE_DELAY = 500L;
        sDebugUpdateTime = 0L;
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(2.0f);
        paint.setTextSize(20.0f);
        paint.setColor(-65536);
    }

    public World(LayerContainer layerContainer) {
        Log.i("World", "World: created");
        this.mContainer = layerContainer;
        FrameController frameController = new FrameController(layerContainer);
        this.mFrameController = frameController;
        ParticleRule particleRule = new ParticleRule();
        LongRangeable longRangeable = particleRule.lifeTime;
        longRangeable.mMin = -1L;
        longRangeable.mMax = -1L;
        longRangeable.onRangeUpdated();
        Emitter emitter = new Emitter(layerContainer.getAppContext(), this, new EmissionRule(), particleRule);
        this.mRootEmitter = emitter;
        this.mRootParticle = new Particle(emitter);
        frameController.startFrameRateDown();
    }

    public final void draw(Canvas canvas) {
        int i;
        if (this.mIsRunning && !this.mIsPaused) {
            long currentTimeMillis = System.currentTimeMillis();
            WorldParticleLinkedList worldParticleLinkedList = this.mWorldParticleLinkedList;
            Particle particle = worldParticleLinkedList.head;
            int i2 = worldParticleLinkedList.size;
            int i3 = 0;
            while (i3 < i2) {
                ParticleTexture particleTexture = particle.mParticleTexture;
                if (particleTexture != null && particle.mEnable && particle.mIsInSight) {
                    Status status = particle.status;
                    if (status.alpha >= 0.0f) {
                        ParticleRule particleRule = particle.mParentEmitter.mParticleRule;
                        boolean z = status.mUpdateBounds;
                        RectF rectF = status.mBounds;
                        if (z) {
                            float f = status.drawingWidth / 2.0f;
                            float f2 = status.drawingHeight / 2.0f;
                            float f3 = status.posX;
                            float f4 = status.posY;
                            rectF.set(f3 - f, f4 - f2, f3 + f, f4 + f2);
                            status.mUpdateBounds = false;
                        }
                        float centerX = rectF.centerX();
                        float centerY = rectF.centerY();
                        Paint paint = Particle.sPaint;
                        paint.setColorFilter(particle.mColorFilter);
                        paint.setAlpha(Math.min(255, Math.max(0, (int) (status.alpha * 255.0f))));
                        canvas.save();
                        canvas.rotate(status.rotation, centerX, centerY);
                        if (particleRule.configValues[ParticleConfigType.APPLY_DRAW_MORPHING_BY_SPEED.idx] && !rectF.isEmpty()) {
                            float height = rectF.height();
                            float max = Math.max(0.5f * height, 1.0f) / height;
                            if (status.acc >= 0.0f) {
                                max = 1.0f;
                            }
                            float max2 = Math.max(max, Math.min(10.0f, status.speed / (Particle.sDensity * 1.5f)));
                            if (max2 != 1.0f) {
                                canvas.scale(1.0f, max2, centerX, centerY);
                            }
                        }
                        float f5 = rectF.left;
                        float f6 = rectF.top;
                        float f7 = rectF.right;
                        float f8 = rectF.bottom;
                        RectF rectF2 = particleTexture.mBounds;
                        float f9 = rectF2.left;
                        float f10 = rectF2.top;
                        float f11 = rectF2.right;
                        i = i2;
                        float f12 = rectF2.bottom;
                        if (f9 != f5 || f10 != f6 || f11 != f7 || f12 != f8) {
                            rectF2.set(f5, f6, f7, f8);
                            particleTexture.onBoundChanged();
                        }
                        particleTexture.draw(canvas, paint);
                        canvas.restore();
                        particle = particle.next;
                        i3++;
                        i2 = i;
                    }
                }
                i = i2;
                particle = particle.next;
                i3++;
                i2 = i;
            }
            if (DEBUG_ANY && sDebugUpdateTime + DEBUG_UPDATE_DELAY < currentTimeMillis) {
                sDebugUpdateTime = currentTimeMillis;
            }
        }
    }

    public final void resume() {
        if (!this.mIsPaused) {
            return;
        }
        Log.i("World", "resume: ");
        long currentTimeMillis = System.currentTimeMillis();
        if (this.mIsRunning && 0 == this.mStartedTime) {
            this.mStartedTime = currentTimeMillis;
        }
        long j = this.mPausedTime;
        if (0 < j) {
            this.mTotalPausedTime = (currentTimeMillis - j) + this.mTotalPausedTime;
        }
        this.mLastStepTime = currentTimeMillis;
        this.mIsPaused = false;
    }

    public final void setSize(float f, float f2) {
        Status status = this.mWorldStatus;
        status.width = f;
        status.drawingWidth = status.scaleX * f;
        status.height = f2;
        status.drawingHeight = status.scaleY * f2;
        status.posX = f / 2.0f;
        status.posY = f2 / 2.0f;
        status.mUpdateBounds = true;
        Particle.sDensity = this.mContainer.getAppContext().getResources().getDisplayMetrics().density;
    }

    public final void start() {
        Log.i("World", "start: ");
        if (!this.mIsRunning) {
            this.mIsRunning = true;
            if (!this.mIsPaused) {
                this.mStartedTime = System.currentTimeMillis();
            }
            this.mRootParticle.start(0L);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:79:0x0292  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x02a3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void step(long r37) {
        /*
            Method dump skipped, instructions count: 779
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.samsung.android.nexus.particle.emitter.World.step(long):void");
    }
}
