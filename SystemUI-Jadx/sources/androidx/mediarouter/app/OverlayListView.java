package androidx.mediarouter.app;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.util.AttributeSet;
import android.view.animation.Interpolator;
import android.widget.ListView;
import androidx.constraintlayout.core.widgets.analyzer.DependencyGraph$$ExternalSyntheticOutline0;
import androidx.mediarouter.app.MediaRouteControllerDialog;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
final class OverlayListView extends ListView {
    public final List mOverlayObjects;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class OverlayObject {
        public final BitmapDrawable mBitmap;
        public final Rect mCurrentBounds;
        public int mDeltaY;
        public long mDuration;
        public Interpolator mInterpolator;
        public boolean mIsAnimationEnded;
        public boolean mIsAnimationStarted;
        public MediaRouteControllerDialog.AnonymousClass10 mListener;
        public final Rect mStartRect;
        public long mStartTime;
        public float mCurrentAlpha = 1.0f;
        public float mStartAlpha = 1.0f;
        public float mEndAlpha = 1.0f;

        public OverlayObject(BitmapDrawable bitmapDrawable, Rect rect) {
            this.mBitmap = bitmapDrawable;
            this.mStartRect = rect;
            Rect rect2 = new Rect(rect);
            this.mCurrentBounds = rect2;
            if (bitmapDrawable != null) {
                bitmapDrawable.setAlpha((int) (this.mCurrentAlpha * 255.0f));
                bitmapDrawable.setBounds(rect2);
            }
        }
    }

    public OverlayListView(Context context) {
        super(context);
        this.mOverlayObjects = new ArrayList();
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        float interpolation;
        boolean z;
        super.onDraw(canvas);
        if (((ArrayList) this.mOverlayObjects).size() > 0) {
            Iterator it = ((ArrayList) this.mOverlayObjects).iterator();
            while (it.hasNext()) {
                OverlayObject overlayObject = (OverlayObject) it.next();
                BitmapDrawable bitmapDrawable = overlayObject.mBitmap;
                if (bitmapDrawable != null) {
                    bitmapDrawable.draw(canvas);
                }
                long drawingTime = getDrawingTime();
                if (overlayObject.mIsAnimationEnded) {
                    z = false;
                } else {
                    float f = 0.0f;
                    float max = Math.max(0.0f, Math.min(1.0f, ((float) (drawingTime - overlayObject.mStartTime)) / ((float) overlayObject.mDuration)));
                    if (overlayObject.mIsAnimationStarted) {
                        f = max;
                    }
                    Interpolator interpolator = overlayObject.mInterpolator;
                    if (interpolator == null) {
                        interpolation = f;
                    } else {
                        interpolation = interpolator.getInterpolation(f);
                    }
                    int i = (int) (overlayObject.mDeltaY * interpolation);
                    Rect rect = overlayObject.mStartRect;
                    int i2 = rect.top + i;
                    Rect rect2 = overlayObject.mCurrentBounds;
                    rect2.top = i2;
                    rect2.bottom = rect.bottom + i;
                    float f2 = overlayObject.mStartAlpha;
                    float m = DependencyGraph$$ExternalSyntheticOutline0.m(overlayObject.mEndAlpha, f2, interpolation, f2);
                    overlayObject.mCurrentAlpha = m;
                    BitmapDrawable bitmapDrawable2 = overlayObject.mBitmap;
                    if (bitmapDrawable2 != null) {
                        bitmapDrawable2.setAlpha((int) (m * 255.0f));
                        bitmapDrawable2.setBounds(rect2);
                    }
                    if (overlayObject.mIsAnimationStarted && f >= 1.0f) {
                        overlayObject.mIsAnimationEnded = true;
                        MediaRouteControllerDialog.AnonymousClass10 anonymousClass10 = overlayObject.mListener;
                        if (anonymousClass10 != null) {
                            MediaRouteControllerDialog mediaRouteControllerDialog = MediaRouteControllerDialog.this;
                            ((HashSet) mediaRouteControllerDialog.mGroupMemberRoutesAnimatingWithBitmap).remove(anonymousClass10.val$route);
                            mediaRouteControllerDialog.mVolumeGroupAdapter.notifyDataSetChanged();
                        }
                    }
                    z = !overlayObject.mIsAnimationEnded;
                }
                if (!z) {
                    it.remove();
                }
            }
        }
    }

    public OverlayListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mOverlayObjects = new ArrayList();
    }

    public OverlayListView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mOverlayObjects = new ArrayList();
    }
}
