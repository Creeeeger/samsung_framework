package androidx.constraintlayout.helper.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.constraintlayout.motion.widget.MotionHelper;
import androidx.constraintlayout.widget.R$styleable;

/* loaded from: classes.dex */
public class MotionEffect extends MotionHelper {
    private int mFadeMove;
    private float mMotionEffectAlpha;
    private int mMotionEffectEnd;
    private int mMotionEffectStart;
    private boolean mMotionEffectStrictMove;
    private int mMotionEffectTranslationX;
    private int mMotionEffectTranslationY;
    private int mViewTransitionId;

    public MotionEffect(Context context) {
        super(context);
        this.mMotionEffectAlpha = 0.1f;
        this.mMotionEffectStart = 49;
        this.mMotionEffectEnd = 50;
        this.mMotionEffectTranslationX = 0;
        this.mMotionEffectTranslationY = 0;
        this.mMotionEffectStrictMove = true;
        this.mViewTransitionId = -1;
        this.mFadeMove = -1;
    }

    private void init(Context context, AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.MotionEffect);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == 3) {
                    int i2 = obtainStyledAttributes.getInt(index, this.mMotionEffectStart);
                    this.mMotionEffectStart = i2;
                    this.mMotionEffectStart = Math.max(Math.min(i2, 99), 0);
                } else if (index == 1) {
                    int i3 = obtainStyledAttributes.getInt(index, this.mMotionEffectEnd);
                    this.mMotionEffectEnd = i3;
                    this.mMotionEffectEnd = Math.max(Math.min(i3, 99), 0);
                } else if (index == 5) {
                    this.mMotionEffectTranslationX = obtainStyledAttributes.getDimensionPixelOffset(index, this.mMotionEffectTranslationX);
                } else if (index == 6) {
                    this.mMotionEffectTranslationY = obtainStyledAttributes.getDimensionPixelOffset(index, this.mMotionEffectTranslationY);
                } else if (index == 0) {
                    this.mMotionEffectAlpha = obtainStyledAttributes.getFloat(index, this.mMotionEffectAlpha);
                } else if (index == 2) {
                    this.mFadeMove = obtainStyledAttributes.getInt(index, this.mFadeMove);
                } else if (index == 4) {
                    this.mMotionEffectStrictMove = obtainStyledAttributes.getBoolean(index, this.mMotionEffectStrictMove);
                } else if (index == 7) {
                    this.mViewTransitionId = obtainStyledAttributes.getResourceId(index, this.mViewTransitionId);
                }
            }
            int i4 = this.mMotionEffectStart;
            int i5 = this.mMotionEffectEnd;
            if (i4 == i5) {
                if (i4 > 0) {
                    this.mMotionEffectStart = i4 - 1;
                } else {
                    this.mMotionEffectEnd = i5 + 1;
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:104:0x01bc, code lost:
    
        if (r15 == 0.0f) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0186, code lost:
    
        if (r14 == 0.0f) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x0199, code lost:
    
        if (r14 == 0.0f) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x01a9, code lost:
    
        if (r15 == 0.0f) goto L75;
     */
    @Override // androidx.constraintlayout.motion.widget.MotionHelper
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void onPreSetup(androidx.constraintlayout.motion.widget.MotionLayout r22, java.util.HashMap<android.view.View, androidx.constraintlayout.motion.widget.MotionController> r23) {
        /*
            Method dump skipped, instructions count: 503
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.helper.widget.MotionEffect.onPreSetup(androidx.constraintlayout.motion.widget.MotionLayout, java.util.HashMap):void");
    }

    public MotionEffect(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mMotionEffectAlpha = 0.1f;
        this.mMotionEffectStart = 49;
        this.mMotionEffectEnd = 50;
        this.mMotionEffectTranslationX = 0;
        this.mMotionEffectTranslationY = 0;
        this.mMotionEffectStrictMove = true;
        this.mViewTransitionId = -1;
        this.mFadeMove = -1;
        init(context, attributeSet);
    }

    public MotionEffect(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mMotionEffectAlpha = 0.1f;
        this.mMotionEffectStart = 49;
        this.mMotionEffectEnd = 50;
        this.mMotionEffectTranslationX = 0;
        this.mMotionEffectTranslationY = 0;
        this.mMotionEffectStrictMove = true;
        this.mViewTransitionId = -1;
        this.mFadeMove = -1;
        init(context, attributeSet);
    }
}
