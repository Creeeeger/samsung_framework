package android.graphics.drawable;

import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.DrawableContainer;
import android.os.SystemClock;
import android.util.AttributeSet;
import com.android.internal.R;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
public class AnimationDrawable extends DrawableContainer implements Runnable, Animatable {
    private boolean mAnimating;
    private AnimationState mAnimationState;
    private int mCurFrame;
    private boolean mMutated;
    private boolean mRunning;

    /* synthetic */ AnimationDrawable(AnimationState animationState, Resources resources, AnimationDrawableIA animationDrawableIA) {
        this(animationState, resources);
    }

    public AnimationDrawable() {
        this(null, null);
    }

    @Override // android.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable
    public boolean setVisible(boolean visible, boolean restart) {
        boolean changed = super.setVisible(visible, restart);
        if (visible) {
            if (restart || changed) {
                boolean startFromZero = restart || !(this.mRunning || this.mAnimationState.mOneShot) || this.mCurFrame >= this.mAnimationState.getChildCount();
                setFrame(startFromZero ? 0 : this.mCurFrame, true, this.mAnimating);
            }
        } else {
            unscheduleSelf(this);
        }
        return changed;
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        boolean z = true;
        this.mAnimating = true;
        if (!isRunning()) {
            if (this.mAnimationState.getChildCount() <= 1 && this.mAnimationState.mOneShot) {
                z = false;
            }
            setFrame(0, false, z);
        }
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        this.mAnimating = false;
        if (isRunning()) {
            this.mCurFrame = 0;
            unscheduleSelf(this);
        }
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.mRunning;
    }

    @Override // java.lang.Runnable
    public void run() {
        nextFrame(false);
    }

    @Override // android.graphics.drawable.Drawable
    public void unscheduleSelf(Runnable what) {
        this.mRunning = false;
        super.unscheduleSelf(what);
    }

    public int getNumberOfFrames() {
        return this.mAnimationState.getChildCount();
    }

    public Drawable getFrame(int index) {
        return this.mAnimationState.getChild(index);
    }

    public int getDuration(int i) {
        return this.mAnimationState.mDurations[i];
    }

    public boolean isOneShot() {
        return this.mAnimationState.mOneShot;
    }

    public void setOneShot(boolean oneShot) {
        this.mAnimationState.mOneShot = oneShot;
    }

    public void addFrame(Drawable frame, int duration) {
        this.mAnimationState.addFrame(frame, duration);
        if (!this.mRunning) {
            setFrame(0, true, false);
        }
    }

    private void nextFrame(boolean unschedule) {
        int nextFrame = this.mCurFrame + 1;
        int numFrames = this.mAnimationState.getChildCount();
        boolean isLastFrame = this.mAnimationState.mOneShot && nextFrame >= numFrames + (-1);
        if (!this.mAnimationState.mOneShot && nextFrame >= numFrames) {
            nextFrame = 0;
        }
        setFrame(nextFrame, unschedule, isLastFrame ? false : true);
    }

    private void setFrame(int frame, boolean unschedule, boolean animate) {
        if (frame >= this.mAnimationState.getChildCount()) {
            return;
        }
        this.mAnimating = animate;
        this.mCurFrame = frame;
        selectDrawable(frame);
        if (unschedule || animate) {
            unscheduleSelf(this);
        }
        if (animate) {
            this.mCurFrame = frame;
            this.mRunning = true;
            scheduleSelf(this, SystemClock.uptimeMillis() + this.mAnimationState.mDurations[frame]);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources r, XmlPullParser parser, AttributeSet attrs, Resources.Theme theme) throws XmlPullParserException, IOException {
        TypedArray a = obtainAttributes(r, theme, attrs, R.styleable.AnimationDrawable);
        super.inflateWithAttributes(r, parser, a, 0);
        updateStateFromTypedArray(a);
        updateDensity(r);
        a.recycle();
        inflateChildElements(r, parser, attrs, theme);
        setFrame(0, true, false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0040, code lost:
    
        if (r7 == null) goto L71;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0042, code lost:
    
        r8 = r12.next();
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0048, code lost:
    
        if (r8 != 4) goto L99;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x004b, code lost:
    
        if (r8 != 2) goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x004d, code lost:
    
        r7 = android.graphics.drawable.Drawable.createFromXmlInner(r11, r12, r13, r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x006e, code lost:
    
        throw new org.xmlpull.v1.XmlPullParserException(r12.getPositionDescription() + ": <item> tag requires a 'drawable' attribute or child tag defining a drawable");
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x006f, code lost:
    
        r10.mAnimationState.addFrame(r7, r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0074, code lost:
    
        if (r7 == null) goto L97;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0076, code lost:
    
        r7.setCallback(r10);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void inflateChildElements(android.content.res.Resources r11, org.xmlpull.v1.XmlPullParser r12, android.util.AttributeSet r13, android.content.res.Resources.Theme r14) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        /*
            r10 = this;
            int r0 = r12.getDepth()
            r1 = 1
            int r0 = r0 + r1
        L6:
            int r2 = r12.next()
            r3 = r2
            if (r2 == r1) goto L97
            int r2 = r12.getDepth()
            r4 = r2
            if (r2 >= r0) goto L17
            r2 = 3
            if (r3 == r2) goto L97
        L17:
            r2 = 2
            if (r3 == r2) goto L1b
            goto L6
        L1b:
            if (r4 > r0) goto L6
            java.lang.String r5 = r12.getName()
            java.lang.String r6 = "item"
            boolean r5 = r5.equals(r6)
            if (r5 != 0) goto L2b
            goto L6
        L2b:
            int[] r5 = com.android.internal.R.styleable.AnimationDrawableItem
            android.content.res.TypedArray r5 = obtainAttributes(r11, r14, r13, r5)
            r6 = 0
            r7 = -1
            int r6 = r5.getInt(r6, r7)
            if (r6 < 0) goto L7a
            android.graphics.drawable.Drawable r7 = r5.getDrawable(r1)
            r5.recycle()
            if (r7 != 0) goto L6f
        L42:
            int r8 = r12.next()
            r3 = r8
            r9 = 4
            if (r8 != r9) goto L4b
            goto L42
        L4b:
            if (r3 != r2) goto L52
            android.graphics.drawable.Drawable r7 = android.graphics.drawable.Drawable.createFromXmlInner(r11, r12, r13, r14)
            goto L6f
        L52:
            org.xmlpull.v1.XmlPullParserException r1 = new org.xmlpull.v1.XmlPullParserException
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r8 = r12.getPositionDescription()
            java.lang.StringBuilder r2 = r2.append(r8)
            java.lang.String r8 = ": <item> tag requires a 'drawable' attribute or child tag defining a drawable"
            java.lang.StringBuilder r2 = r2.append(r8)
            java.lang.String r2 = r2.toString()
            r1.<init>(r2)
            throw r1
        L6f:
            android.graphics.drawable.AnimationDrawable$AnimationState r2 = r10.mAnimationState
            r2.addFrame(r7, r6)
            if (r7 == 0) goto L79
            r7.setCallback(r10)
        L79:
            goto L6
        L7a:
            org.xmlpull.v1.XmlPullParserException r1 = new org.xmlpull.v1.XmlPullParserException
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r7 = r12.getPositionDescription()
            java.lang.StringBuilder r2 = r2.append(r7)
            java.lang.String r7 = ": <item> tag requires a 'duration' attribute"
            java.lang.StringBuilder r2 = r2.append(r7)
            java.lang.String r2 = r2.toString()
            r1.<init>(r2)
            throw r1
        L97:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: android.graphics.drawable.AnimationDrawable.inflateChildElements(android.content.res.Resources, org.xmlpull.v1.XmlPullParser, android.util.AttributeSet, android.content.res.Resources$Theme):void");
    }

    private void updateStateFromTypedArray(TypedArray a) {
        AnimationState animationState = this.mAnimationState;
        animationState.mVariablePadding = a.getBoolean(1, animationState.mVariablePadding);
        AnimationState animationState2 = this.mAnimationState;
        animationState2.mOneShot = a.getBoolean(2, animationState2.mOneShot);
    }

    @Override // android.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.mMutated && super.mutate() == this) {
            this.mAnimationState.mutate();
            this.mMutated = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.DrawableContainer
    public AnimationState cloneConstantState() {
        return new AnimationState(this.mAnimationState, this, null);
    }

    @Override // android.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable
    public void clearMutated() {
        super.clearMutated();
        this.mMutated = false;
    }

    /* loaded from: classes.dex */
    public static final class AnimationState extends DrawableContainer.DrawableContainerState {
        private int[] mDurations;
        private boolean mOneShot;

        AnimationState(AnimationState orig, AnimationDrawable owner, Resources res) {
            super(orig, owner, res);
            this.mOneShot = false;
            if (orig != null) {
                this.mDurations = orig.mDurations;
                this.mOneShot = orig.mOneShot;
            } else {
                this.mDurations = new int[getCapacity()];
                this.mOneShot = false;
            }
        }

        public void mutate() {
            this.mDurations = (int[]) this.mDurations.clone();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            return new AnimationDrawable(this, null);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources res) {
            return new AnimationDrawable(this, res);
        }

        public void addFrame(Drawable dr, int dur) {
            int pos = super.addChild(dr);
            this.mDurations[pos] = dur;
        }

        @Override // android.graphics.drawable.DrawableContainer.DrawableContainerState
        public void growArray(int oldSize, int newSize) {
            super.growArray(oldSize, newSize);
            int[] newDurations = new int[newSize];
            System.arraycopy(this.mDurations, 0, newDurations, 0, oldSize);
            this.mDurations = newDurations;
        }

        public long getTotalDuration() {
            int[] iArr = this.mDurations;
            if (iArr != null) {
                int total = 0;
                for (int dur : iArr) {
                    total += dur;
                }
                return total;
            }
            return 0L;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.graphics.drawable.DrawableContainer
    public void setConstantState(DrawableContainer.DrawableContainerState state) {
        super.setConstantState(state);
        if (state instanceof AnimationState) {
            this.mAnimationState = (AnimationState) state;
        }
    }

    public long getTotalDuration() {
        return this.mAnimationState.getTotalDuration();
    }

    private AnimationDrawable(AnimationState state, Resources res) {
        this.mCurFrame = 0;
        AnimationState as = new AnimationState(state, this, res);
        setConstantState(as);
        if (state != null) {
            setFrame(0, true, false);
        }
    }
}
