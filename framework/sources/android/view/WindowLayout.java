package android.view;

import android.app.WindowConfiguration;
import android.graphics.Point;
import android.graphics.Rect;
import android.view.WindowManager;
import android.window.ClientWindowFrames;
import com.samsung.android.multiwindow.MultiWindowCoreState;

/* loaded from: classes4.dex */
public class WindowLayout {
    private static final boolean DEBUG = false;
    static final int MAX_X = 100000;
    static final int MAX_Y = 100000;
    static final int MIN_X = -100000;
    static final int MIN_Y = -100000;
    private static final String TAG = WindowLayout.class.getSimpleName();
    public static final int UNSPECIFIED_LENGTH = -1;
    private final Rect mTempDisplayCutoutSafeExceptMaybeBarsRect = new Rect();
    private final Rect mTempRect = new Rect();

    public void computeFrames(WindowManager.LayoutParams attrs, InsetsState state, Rect displayCutoutSafe, Rect windowBounds, int windowingMode, int requestedWidth, int requestedHeight, int requestedVisibleTypes, float compatScale, ClientWindowFrames frames) {
        computeFrames(attrs, state, displayCutoutSafe, windowBounds, windowingMode, requestedWidth, requestedHeight, requestedVisibleTypes, compatScale, frames, 0);
    }

    /* JADX WARN: Code restructure failed: missing block: B:169:0x018c, code lost:
    
        if (r10 != false) goto L305;
     */
    /* JADX WARN: Code restructure failed: missing block: B:170:0x018e, code lost:
    
        r5 = true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void computeFrames(android.view.WindowManager.LayoutParams r47, android.view.InsetsState r48, android.graphics.Rect r49, android.graphics.Rect r50, int r51, int r52, int r53, int r54, float r55, android.window.ClientWindowFrames r56, int r57) {
        /*
            Method dump skipped, instructions count: 889
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: android.view.WindowLayout.computeFrames(android.view.WindowManager$LayoutParams, android.view.InsetsState, android.graphics.Rect, android.graphics.Rect, int, int, int, int, float, android.window.ClientWindowFrames, int):void");
    }

    public static void extendFrameByCutout(Rect displayCutoutSafe, Rect displayFrame, Rect inOutFrame, Rect tempRect) {
        if (displayCutoutSafe.contains(inOutFrame)) {
            return;
        }
        tempRect.set(inOutFrame);
        Gravity.applyDisplay(0, displayCutoutSafe, tempRect);
        if (tempRect.intersect(displayFrame)) {
            inOutFrame.union(tempRect);
        }
    }

    public static void computeSurfaceSize(WindowManager.LayoutParams attrs, Rect maxBounds, int requestedWidth, int requestedHeight, Rect winFrame, boolean dragResizing, Point outSurfaceSize) {
        int width;
        int height;
        if ((attrs.flags & 16384) != 0) {
            width = requestedWidth;
            height = requestedHeight;
        } else if (dragResizing) {
            width = maxBounds.width();
            height = maxBounds.height();
        } else {
            width = winFrame.width();
            height = winFrame.height();
        }
        if (width < 1) {
            width = 1;
        }
        if (height < 1) {
            height = 1;
        }
        if (0 != 0) {
            Rect surfaceInsets = attrs.surfaceInsets;
            Rect screenSurfaceInsets = new Rect(surfaceInsets);
            screenSurfaceInsets.scale(1.0f / 1.0f);
            int width2 = width + surfaceInsets.left + surfaceInsets.right;
            int height2 = height + surfaceInsets.top + surfaceInsets.bottom;
            Rect result = new Rect();
            result.left -= screenSurfaceInsets.left;
            result.top -= screenSurfaceInsets.top;
            result.right = result.left + width2;
            result.bottom = result.top + height2;
            outSurfaceSize.set(result.width(), result.height());
            return;
        }
        Rect surfaceInsets2 = attrs.surfaceInsets;
        outSurfaceSize.set(width + surfaceInsets2.left + surfaceInsets2.right, height + surfaceInsets2.top + surfaceInsets2.bottom);
    }

    private static boolean ignoreCutoutMode(WindowManager.LayoutParams attrs, int windowingMode, int stageType) {
        if (windowingMode == 5 || windowingMode == 2) {
            return true;
        }
        return MultiWindowCoreState.MW_SPLIT_IMMERSIVE_MODE_ENABLED && WindowConfiguration.isSplitScreenWindowingMode(stageType);
    }
}
