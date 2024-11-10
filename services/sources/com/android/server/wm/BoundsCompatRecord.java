package com.android.server.wm;

import android.content.pm.ActivityInfo;
import android.content.res.Configuration;
import android.graphics.Rect;
import android.util.Slog;
import com.android.server.display.DisplayPowerController2;
import com.android.server.wm.ActivityRecord;
import com.samsung.android.rune.CoreRune;
import java.io.PrintWriter;

/* loaded from: classes3.dex */
public class BoundsCompatRecord {
    public final ActivityRecord mActivityRecord;
    public int mAspectRatioPolicy;
    public final ActivityTaskManagerService mAtmService;
    public boolean mCanRotationCompatMode;
    public BoundsCompatController mCandidateController;
    public float mContainingRatio;
    public BoundsCompatController mController;
    public float mDesiredAspectRatio;
    public boolean mEnabledBySizeCompatPolicy;
    public float mFixedAspectRatio;
    public boolean mIsIgnoreOrientationRequest;
    public boolean mIsTaskOrientationMismatched;
    public ActivityRecord.CompatDisplayInsets mPendingCompatDisplayInsets;
    public boolean mRestrictedBounds;
    public boolean mRotationCompatModeInherited;
    public int mRotationCompatReason;
    public boolean mShouldPlayMoveAnimation;
    public boolean mSupportsIgnoreOrientationRequest;
    public boolean mWaitForChangingPinnedMode;
    public int mPreferredOrientation = 0;
    public int mScreenOrientationInMultiWindow = -2;
    public float mDesiredAspectRatioAsCompat = -1.0f;

    public static boolean hasDefinedAspectRatio(float f) {
        return f > DisplayPowerController2.RATE_FROM_DOZE_TO_ON;
    }

    public BoundsCompatRecord(ActivityRecord activityRecord) {
        this.mActivityRecord = activityRecord;
        this.mAtmService = activityRecord.mAtmService;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0057  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void prepare() {
        /*
            r5 = this;
            r0 = 0
            r5.mCandidateController = r0
            r5.mController = r0
            boolean r0 = com.samsung.android.rune.CoreRune.FW_BOUNDS_COMPAT_DISPLAY_CENTER_ALIGNMENT
            r1 = 0
            if (r0 == 0) goto Lc
            r5.mRestrictedBounds = r1
        Lc:
            boolean r0 = com.samsung.android.rune.CoreRune.FW_ORIENTATION_CONTROL
            if (r0 == 0) goto L14
            r5.mIsTaskOrientationMismatched = r1
            r5.mIsIgnoreOrientationRequest = r1
        L14:
            boolean r0 = com.samsung.android.rune.CoreRune.FW_ORIENTATION_CONTROL_WITH_ROTATION_COMPAT
            if (r0 == 0) goto L1e
            r5.mRotationCompatModeInherited = r1
            r0 = -1082130432(0xffffffffbf800000, float:-1.0)
            r5.mDesiredAspectRatioAsCompat = r0
        L1e:
            boolean r0 = com.samsung.android.rune.CoreRune.MT_NEW_DEX
            if (r0 == 0) goto L2d
            com.android.server.wm.ActivityRecord r0 = r5.mActivityRecord
            boolean r0 = r0.isNewDexMode()
            if (r0 == 0) goto L2d
            r0 = -2
            r5.mScreenOrientationInMultiWindow = r0
        L2d:
            com.android.server.wm.ActivityRecord r0 = r5.mActivityRecord
            com.android.server.wm.Task r0 = r0.getTask()
            r2 = 1
            if (r0 == 0) goto L4a
            boolean r3 = r0.inPinnedWindowingMode()
            if (r3 == 0) goto L4a
            com.android.server.wm.ActivityRecord r3 = r5.mActivityRecord
            boolean r4 = r3.mWaitForEnteringPinnedMode
            if (r4 != 0) goto L4a
            int r3 = r3.getRequestedOverrideWindowingMode()
            if (r3 != r2) goto L4a
            r3 = r2
            goto L4b
        L4a:
            r3 = r1
        L4b:
            r5.mWaitForChangingPinnedMode = r3
            boolean r3 = com.android.server.wm.BoundsCompatUtils.isSupportsBoundsCompat()
            if (r3 != 0) goto L57
            r5.clearPolicy(r1)
            return
        L57:
            boolean r3 = com.samsung.android.rune.CoreRune.MT_SUPPORT_SIZE_COMPAT_COORDINATION
            if (r3 == 0) goto L7e
            com.android.server.wm.SizeCompatPolicyManager r3 = com.android.server.wm.SizeCompatPolicyManager.get()
            com.android.server.wm.SizeCompatPolicy r3 = r3.getCompatPolicy(r0)
            if (r3 == 0) goto L67
            r4 = r2
            goto L68
        L67:
            r4 = r1
        L68:
            if (r4 == 0) goto L71
            boolean r3 = r3.supportsIgnoreOrientationRequest()
            if (r3 == 0) goto L71
            r1 = r2
        L71:
            r5.mSupportsIgnoreOrientationRequest = r1
            r5.mEnabledBySizeCompatPolicy = r1
            if (r4 == 0) goto L7e
            if (r1 != 0) goto L7e
            r0 = 5
            r5.clearPolicy(r0)
            return
        L7e:
            boolean r1 = com.samsung.android.rune.CoreRune.MW_EMBED_ACTIVITY
            if (r1 == 0) goto L8e
            com.android.server.wm.ActivityRecord r1 = r5.mActivityRecord
            boolean r1 = r1.isSplitEmbedded()
            if (r1 == 0) goto L8e
            r5.clearPolicy(r2)
            return
        L8e:
            com.android.server.wm.ActivityRecord r1 = r5.mActivityRecord
            int r1 = r1.getRequestedOverrideWindowingMode()
            if (r1 == r2) goto La3
            if (r0 == 0) goto La3
            boolean r0 = r0.inMultiWindowMode()
            if (r0 == 0) goto La3
            r0 = 2
            r5.clearPolicy(r0)
            return
        La3:
            com.android.server.wm.ActivityRecord r0 = r5.mActivityRecord
            int r0 = r0.getDisplayId()
            if (r0 == 0) goto Lb0
            r0 = 3
            r5.clearPolicy(r0)
            return
        Lb0:
            r5.applyPolicyIfNeeded()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.wm.BoundsCompatRecord.prepare():void");
    }

    public final void clearPolicy(int i) {
        this.mDesiredAspectRatio = DisplayPowerController2.RATE_FROM_DOZE_TO_ON;
        this.mContainingRatio = DisplayPowerController2.RATE_FROM_DOZE_TO_ON;
        if (CoreRune.FW_ORIENTATION_CONTROL) {
            if (!this.mActivityRecord.inMultiWindowMode()) {
                this.mScreenOrientationInMultiWindow = -2;
            }
            if (CoreRune.FW_ORIENTATION_CONTROL_WITH_ROTATION_COMPAT && this.mCanRotationCompatMode) {
                if (CoreRune.FW_ORIENTATION_CONTROL_WITH_ROTATION_COMPAT_FOR_FOLD) {
                    this.mPendingCompatDisplayInsets = null;
                }
                this.mRotationCompatReason = i != 0 ? i != 1 ? i != 2 ? i != 3 ? i != 4 ? 0 : 213 : 209 : 201 : 210 : 200;
                this.mCanRotationCompatMode = false;
                this.mAtmService.mExt.mOrientationController.clearRotationCompatMode(this.mActivityRecord, false);
            }
        }
        if (CoreRune.MT_SUPPORT_SIZE_COMPAT_COORDINATION) {
            this.mSupportsIgnoreOrientationRequest = false;
            this.mEnabledBySizeCompatPolicy = false;
        }
    }

    public final void applyPolicyIfNeeded() {
        boolean z = CoreRune.MT_SUPPORT_SIZE_COMPAT_COORDINATION;
        float f = DisplayPowerController2.RATE_FROM_DOZE_TO_ON;
        this.mDesiredAspectRatio = DisplayPowerController2.RATE_FROM_DOZE_TO_ON;
        boolean shouldApplyMinAspectRatio = BoundsCompatUtils.get().shouldApplyMinAspectRatio(this.mActivityRecord.mDisplayContent);
        float fixedAspectRatio = (CoreRune.FW_FIXED_ASPECT_RATIO_MODE && shouldApplyMinAspectRatio) ? this.mAtmService.mExt.mFixedAspectRatioController.getFixedAspectRatio(this.mActivityRecord) : -1.0f;
        if ((!CoreRune.MT_SUPPORT_SIZE_COMPAT_COORDINATION || !this.mEnabledBySizeCompatPolicy || this.mSupportsIgnoreOrientationRequest) && CoreRune.FW_ORIENTATION_CONTROL) {
            OrientationController orientationController = this.mAtmService.mExt.mOrientationController;
            Task task = this.mActivityRecord.getTask();
            boolean isEnabled = OrientationController.isEnabled(task);
            boolean z2 = false;
            boolean z3 = isEnabled && task.mOrientationControlEnabledAsAspectRatio;
            if (isEnabled && orientationController.isIgnoreOrientationRequest(this.mActivityRecord)) {
                this.mIsIgnoreOrientationRequest = true;
                int i = task.getConfiguration().orientation;
                int preferredConfigurationOrientation = orientationController.getPreferredConfigurationOrientation(this.mActivityRecord, i);
                this.mPreferredOrientation = preferredConfigurationOrientation;
                if ((preferredConfigurationOrientation == 1 || (preferredConfigurationOrientation == 2 && !orientationController.mDisallowWhenLandscapeFixedApp)) && preferredConfigurationOrientation != i) {
                    this.mIsTaskOrientationMismatched = true;
                }
            }
            if (CoreRune.FW_ORIENTATION_CONTROL_WITH_ROTATION_COMPAT) {
                int rotationCompatReason = z3 ? orientationController.getRotationCompatReason(this.mActivityRecord) : 203;
                this.mRotationCompatReason = rotationCompatReason;
                if (rotationCompatReason == 104) {
                    this.mRotationCompatModeInherited = true;
                }
                boolean canRotationCompatMode = orientationController.canRotationCompatMode(rotationCompatReason);
                if (canRotationCompatMode != this.mCanRotationCompatMode) {
                    this.mCanRotationCompatMode = canRotationCompatMode;
                    Slog.d("BoundsCompat", "canRotationCompatMode=" + canRotationCompatMode + ", reason=" + OrientationController.rotationCompatReasonToString(this.mRotationCompatReason) + ", r=" + this.mActivityRecord);
                    if (canRotationCompatMode) {
                        if (this.mActivityRecord.getCompatDisplayInsets() != null && !this.mActivityRecord.getCompatDisplayInsets().mCanRotationCompatMode) {
                            this.mActivityRecord.getCompatDisplayInsets().mCanRotationCompatMode = true;
                        }
                    } else {
                        ActivityRecord activityRecord = this.mActivityRecord;
                        if (CoreRune.FW_ORIENTATION_CONTROL_WITH_ROTATION_COMPAT_FOR_FOLD && this.mRotationCompatReason == 202) {
                            z2 = true;
                        }
                        orientationController.clearRotationCompatMode(activityRecord, z2);
                    }
                }
            }
            if (this.mIsTaskOrientationMismatched) {
                this.mCandidateController = orientationController;
                if (CoreRune.MT_SUPPORT_SIZE_COMPAT_COORDINATION && this.mSupportsIgnoreOrientationRequest) {
                    setController(orientationController);
                    return;
                }
                if (CoreRune.FW_ORIENTATION_CONTROL_WITH_ASPECT_RATIO && z3) {
                    this.mDesiredAspectRatio = fixedAspectRatio != -1.0f ? fixedAspectRatio : ActivityRecord.computeAspectRatio(task.getConfiguration().windowConfiguration.getAppBounds());
                    if (CoreRune.FW_ORIENTATION_CONTROL_WITH_ROTATION_COMPAT && this.mCanRotationCompatMode) {
                        if (fixedAspectRatio != -1.0f) {
                            f = fixedAspectRatio;
                        }
                        this.mDesiredAspectRatioAsCompat = f;
                        if (this.mActivityRecord.getCompatDisplayInsets() == null || !this.mActivityRecord.getCompatDisplayInsets().mCanRotationCompatMode) {
                            return;
                        }
                        setController(orientationController);
                        return;
                    }
                    return;
                }
                return;
            }
        }
        if (shouldApplyMinAspectRatio) {
            if (!(CoreRune.MT_SUPPORT_SIZE_COMPAT_COORDINATION && this.mEnabledBySizeCompatPolicy) && CoreRune.FW_FIXED_ASPECT_RATIO_MODE) {
                this.mFixedAspectRatio = fixedAspectRatio;
                if (hasDefinedAspectRatio(fixedAspectRatio)) {
                    this.mDesiredAspectRatio = fixedAspectRatio;
                    this.mCandidateController = this.mAtmService.mExt.mFixedAspectRatioController;
                    return;
                }
                return;
            }
            return;
        }
        if (CoreRune.MT_SUPPORT_SIZE_COMPAT_COORDINATION && this.mEnabledBySizeCompatPolicy) {
            return;
        }
        CustomAspectRatioController customAspectRatioController = this.mAtmService.mExt.mCustomAspectRatioController;
        ActivityInfo activityInfo = this.mActivityRecord.info;
        int maxAspectRatioPolicy = customAspectRatioController.getMaxAspectRatioPolicy(activityInfo.applicationInfo, activityInfo);
        this.mAspectRatioPolicy = maxAspectRatioPolicy;
        if (CustomAspectRatioController.isFullScreenMode(maxAspectRatioPolicy)) {
            this.mCandidateController = this.mAtmService.mExt.mCustomAspectRatioController;
        }
    }

    public void resolve(Configuration configuration) {
        if (isCompatModeEnabled()) {
            this.mController.adjustBounds(this.mActivityRecord, configuration);
        }
    }

    public boolean isFullScreen() {
        return BoundsCompatUtils.isSupportsBoundsCompat() && !(this.mController == null && this.mCandidateController == null) && getDesiredAspectRatio() == DisplayPowerController2.RATE_FROM_DOZE_TO_ON;
    }

    public float getDesiredAspectRatio() {
        if (CoreRune.FW_ORIENTATION_CONTROL_WITH_ROTATION_COMPAT && this.mDesiredAspectRatioAsCompat != -1.0f && this.mIsTaskOrientationMismatched && this.mCanRotationCompatMode && this.mActivityRecord.getCompatDisplayInsets() != null && this.mActivityRecord.getCompatDisplayInsets().mCanRotationCompatMode) {
            return this.mDesiredAspectRatioAsCompat;
        }
        return this.mDesiredAspectRatio;
    }

    public boolean isCompatModeEnabled() {
        return BoundsCompatUtils.isSupportsBoundsCompat() && this.mController != null;
    }

    public boolean isSizeCompatModeEnabled() {
        return isCompatModeEnabled() && this.mController.shouldUseSizeCompatMode(this.mActivityRecord);
    }

    public boolean isFixedAspectRatioModeEnabled() {
        return CoreRune.FW_FIXED_ASPECT_RATIO_MODE && isCompatModeEnabled() && isFixedAspectRatioController(this.mController);
    }

    public boolean isFixedAspectRatioController(BoundsCompatController boundsCompatController) {
        return CoreRune.FW_FIXED_ASPECT_RATIO_MODE && boundsCompatController == this.mAtmService.mExt.mFixedAspectRatioController;
    }

    public boolean isAboveEmbeddedTaskFragment() {
        ActivityRecord activityBelow;
        return CoreRune.MW_EMBED_ACTIVITY && this.mActivityRecord.isFullscreenEmbedded() && (activityBelow = this.mActivityRecord.getParent().getActivityBelow(this.mActivityRecord)) != null && activityBelow.isSplitEmbedded();
    }

    public void setController(BoundsCompatController boundsCompatController) {
        if (!BoundsCompatUtils.isSupportsBoundsCompat()) {
            this.mController = null;
        } else {
            this.mController = boundsCompatController;
        }
    }

    public BoundsCompatController getController() {
        return this.mController;
    }

    public void onApplyAspectRatio(BoundsCompatController boundsCompatController, float f, float f2, Rect rect) {
        setController(boundsCompatController);
        this.mContainingRatio = f;
        this.mDesiredAspectRatio = f2;
        if (CoreRune.FW_BOUNDS_COMPAT_DISPLAY_CENTER_ALIGNMENT) {
            this.mRestrictedBounds = BoundsCompatUtils.get().restrictToBoundsForMinAspectRatioIfNeeded(this.mActivityRecord, rect);
        }
    }

    public void dump(PrintWriter printWriter, String str) {
        if (isCompatModeEnabled() || CoreRune.isSamsungLogEnabled()) {
            printWriter.println(str + "BoundsCompatInfo: mController=" + this.mController);
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            sb.append("  ");
            String sb2 = sb.toString();
            if (!BoundsCompatUtils.isSupportsBoundsCompat()) {
                printWriter.println(sb2 + "mSupportsBoundsCompat=false");
            }
            if (this.mContainingRatio > DisplayPowerController2.RATE_FROM_DOZE_TO_ON) {
                printWriter.println(sb2 + "mContainingRatio=" + this.mContainingRatio);
            }
            if (this.mDesiredAspectRatio > DisplayPowerController2.RATE_FROM_DOZE_TO_ON) {
                printWriter.println(sb2 + "mDesiredAspectRatio=" + this.mDesiredAspectRatio);
            }
            if (CoreRune.FW_BOUNDS_COMPAT_DISPLAY_CENTER_ALIGNMENT && this.mRestrictedBounds) {
                printWriter.println(sb2 + "mRestrictedBounds=true");
            }
            if (this.mAspectRatioPolicy != 0) {
                printWriter.println(sb2 + "mAspectRatioPolicy=" + CustomAspectRatioController.policyToString(this.mAspectRatioPolicy));
            }
            if (CoreRune.FW_FIXED_ASPECT_RATIO_MODE && this.mFixedAspectRatio != -1.0f) {
                printWriter.println(sb2 + "mFixedAspectRatio=" + this.mFixedAspectRatio);
            }
            if (CoreRune.FW_ORIENTATION_CONTROL && OrientationController.isEnabled(this.mActivityRecord.getTask())) {
                printWriter.print(sb2);
                printWriter.print("mIsIgnoreOrientationRequest=");
                printWriter.print(this.mIsIgnoreOrientationRequest);
                printWriter.print(", mIsTaskOrientationMismatched=");
                printWriter.print(this.mIsTaskOrientationMismatched);
                if (this.mPreferredOrientation != 0) {
                    printWriter.print(", mPreferredOrientation=");
                    printWriter.print(OrientationController.orientationToString(this.mPreferredOrientation));
                }
                if (this.mScreenOrientationInMultiWindow != -2) {
                    printWriter.print(", mScreenOrientationInMultiWindow=");
                    printWriter.print(OrientationController.orientationToString(this.mScreenOrientationInMultiWindow));
                }
                int requestedConfigurationOrientation = this.mActivityRecord.getRequestedConfigurationOrientation();
                if (requestedConfigurationOrientation != 0) {
                    printWriter.print(", RequestedConfigurationOrientation=");
                    printWriter.print(OrientationController.orientationToString(requestedConfigurationOrientation));
                }
                printWriter.println();
                if (CoreRune.FW_ORIENTATION_CONTROL_WITH_ROTATION_COMPAT) {
                    printWriter.print(sb2 + "mRotationCompatReason=" + OrientationController.rotationCompatReasonToString(this.mRotationCompatReason));
                    if (this.mCanRotationCompatMode) {
                        printWriter.print(", mCanRotationCompatMode=true");
                    }
                    printWriter.println();
                }
                if (!CoreRune.FW_ORIENTATION_CONTROL_WITH_ROTATION_COMPAT_FOR_FOLD || this.mPendingCompatDisplayInsets == null) {
                    return;
                }
                printWriter.println(sb2 + "mPendingCompatDisplayInsets");
                this.mPendingCompatDisplayInsets.dump(printWriter, sb2);
            }
        }
    }
}
