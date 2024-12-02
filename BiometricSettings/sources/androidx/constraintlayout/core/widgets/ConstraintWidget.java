package androidx.constraintlayout.core.widgets;

import androidx.constraintlayout.core.Cache;
import androidx.constraintlayout.core.LinearSystem;
import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.analyzer.ChainRun;
import androidx.constraintlayout.core.widgets.analyzer.DependencyNode;
import androidx.constraintlayout.core.widgets.analyzer.HorizontalWidgetRun;
import androidx.constraintlayout.core.widgets.analyzer.VerticalWidgetRun;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: classes.dex */
public class ConstraintWidget {
    public ChainRun horizontalChainRun;
    public int horizontalGroup;
    protected ArrayList<ConstraintAnchor> mAnchors;
    private boolean mAnimated;
    public ConstraintAnchor mBaseline;
    int mBaselineDistance;
    public ConstraintAnchor mBottom;
    public ConstraintAnchor mCenter;
    ConstraintAnchor mCenterX;
    ConstraintAnchor mCenterY;
    public float mCircleConstraintAngle;
    private Object mCompanionWidget;
    private String mDebugName;
    public float mDimensionRatio;
    protected int mDimensionRatioSide;
    private boolean mHasBaseline;
    int mHeight;
    float mHorizontalBiasPercent;
    int mHorizontalChainStyle;
    ConstraintWidget mHorizontalNextWidget;
    public int mHorizontalResolution;
    private boolean mHorizontalSolvingPass;
    private boolean mInPlaceholder;
    private boolean mInVirtualLayout;
    private boolean[] mIsInBarrier;
    private int mLastHorizontalMeasureSpec;
    private int mLastVerticalMeasureSpec;
    public ConstraintAnchor mLeft;
    public ConstraintAnchor[] mListAnchors;
    public DimensionBehaviour[] mListDimensionBehaviors;
    protected ConstraintWidget[] mListNextMatchConstraintsWidget;
    public int mMatchConstraintDefaultHeight;
    public int mMatchConstraintDefaultWidth;
    public int mMatchConstraintMaxHeight;
    public int mMatchConstraintMaxWidth;
    public int mMatchConstraintMinHeight;
    public int mMatchConstraintMinWidth;
    public float mMatchConstraintPercentHeight;
    public float mMatchConstraintPercentWidth;
    private int[] mMaxDimension;
    protected int mMinHeight;
    protected int mMinWidth;
    protected ConstraintWidget[] mNextChainWidget;
    public ConstraintWidget mParent;
    float mResolvedDimensionRatio;
    int mResolvedDimensionRatioSide;
    private boolean mResolvedHorizontal;
    public int[] mResolvedMatchConstraintDefault;
    private boolean mResolvedVertical;
    public ConstraintAnchor mRight;
    public ConstraintAnchor mTop;
    private String mType;
    float mVerticalBiasPercent;
    int mVerticalChainStyle;
    ConstraintWidget mVerticalNextWidget;
    public int mVerticalResolution;
    private boolean mVerticalSolvingPass;
    private int mVisibility;
    public float[] mWeight;
    int mWidth;
    private int mWrapBehaviorInParent;
    protected int mX;
    protected int mY;
    public String stringId;
    public ChainRun verticalChainRun;
    public int verticalGroup;
    public boolean measured = false;
    public HorizontalWidgetRun mHorizontalRun = null;
    public VerticalWidgetRun mVerticalRun = null;
    public boolean[] isTerminalWidget = {true, true};
    private boolean mMeasureRequested = true;
    private boolean mOptimizeWrapOnResolved = true;
    private int mWidthOverride = -1;
    private int mHeightOverride = -1;

    public enum DimensionBehaviour {
        FIXED,
        WRAP_CONTENT,
        MATCH_CONSTRAINT,
        MATCH_PARENT;

        DimensionBehaviour() {
        }
    }

    public ConstraintWidget() {
        new HashMap();
        this.mResolvedHorizontal = false;
        this.mResolvedVertical = false;
        this.mHorizontalSolvingPass = false;
        this.mVerticalSolvingPass = false;
        this.mHorizontalResolution = -1;
        this.mVerticalResolution = -1;
        this.mWrapBehaviorInParent = 0;
        this.mMatchConstraintDefaultWidth = 0;
        this.mMatchConstraintDefaultHeight = 0;
        this.mResolvedMatchConstraintDefault = new int[2];
        this.mMatchConstraintMinWidth = 0;
        this.mMatchConstraintMaxWidth = 0;
        this.mMatchConstraintPercentWidth = 1.0f;
        this.mMatchConstraintMinHeight = 0;
        this.mMatchConstraintMaxHeight = 0;
        this.mMatchConstraintPercentHeight = 1.0f;
        this.mResolvedDimensionRatioSide = -1;
        this.mResolvedDimensionRatio = 1.0f;
        this.mMaxDimension = new int[]{Integer.MAX_VALUE, Integer.MAX_VALUE};
        this.mCircleConstraintAngle = Float.NaN;
        this.mHasBaseline = false;
        this.mInVirtualLayout = false;
        this.mLastHorizontalMeasureSpec = 0;
        this.mLastVerticalMeasureSpec = 0;
        ConstraintAnchor constraintAnchor = new ConstraintAnchor(this, ConstraintAnchor.Type.LEFT);
        this.mLeft = constraintAnchor;
        ConstraintAnchor constraintAnchor2 = new ConstraintAnchor(this, ConstraintAnchor.Type.TOP);
        this.mTop = constraintAnchor2;
        ConstraintAnchor constraintAnchor3 = new ConstraintAnchor(this, ConstraintAnchor.Type.RIGHT);
        this.mRight = constraintAnchor3;
        ConstraintAnchor constraintAnchor4 = new ConstraintAnchor(this, ConstraintAnchor.Type.BOTTOM);
        this.mBottom = constraintAnchor4;
        ConstraintAnchor constraintAnchor5 = new ConstraintAnchor(this, ConstraintAnchor.Type.BASELINE);
        this.mBaseline = constraintAnchor5;
        this.mCenterX = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER_X);
        this.mCenterY = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER_Y);
        ConstraintAnchor constraintAnchor6 = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER);
        this.mCenter = constraintAnchor6;
        this.mListAnchors = new ConstraintAnchor[]{constraintAnchor, constraintAnchor3, constraintAnchor2, constraintAnchor4, constraintAnchor5, constraintAnchor6};
        ArrayList<ConstraintAnchor> arrayList = new ArrayList<>();
        this.mAnchors = arrayList;
        this.mIsInBarrier = new boolean[2];
        DimensionBehaviour dimensionBehaviour = DimensionBehaviour.FIXED;
        this.mListDimensionBehaviors = new DimensionBehaviour[]{dimensionBehaviour, dimensionBehaviour};
        this.mParent = null;
        this.mWidth = 0;
        this.mHeight = 0;
        this.mDimensionRatio = 0.0f;
        this.mDimensionRatioSide = -1;
        this.mX = 0;
        this.mY = 0;
        this.mBaselineDistance = 0;
        this.mHorizontalBiasPercent = 0.5f;
        this.mVerticalBiasPercent = 0.5f;
        this.mVisibility = 0;
        this.mAnimated = false;
        this.mDebugName = null;
        this.mType = null;
        this.mHorizontalChainStyle = 0;
        this.mVerticalChainStyle = 0;
        this.mWeight = new float[]{-1.0f, -1.0f};
        this.mListNextMatchConstraintsWidget = new ConstraintWidget[]{null, null};
        this.mNextChainWidget = new ConstraintWidget[]{null, null};
        this.mHorizontalNextWidget = null;
        this.mVerticalNextWidget = null;
        this.horizontalGroup = -1;
        this.verticalGroup = -1;
        arrayList.add(this.mLeft);
        this.mAnchors.add(this.mTop);
        this.mAnchors.add(this.mRight);
        this.mAnchors.add(this.mBottom);
        this.mAnchors.add(this.mCenterX);
        this.mAnchors.add(this.mCenterY);
        this.mAnchors.add(this.mCenter);
        this.mAnchors.add(this.mBaseline);
    }

    /* JADX WARN: Removed duplicated region for block: B:136:0x03a8  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x0418  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x0467  */
    /* JADX WARN: Removed duplicated region for block: B:198:0x04b1  */
    /* JADX WARN: Removed duplicated region for block: B:215:0x0445  */
    /* JADX WARN: Removed duplicated region for block: B:217:0x03f2  */
    /* JADX WARN: Removed duplicated region for block: B:252:0x02e6  */
    /* JADX WARN: Removed duplicated region for block: B:254:0x02ea  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:291:0x04fa  */
    /* JADX WARN: Removed duplicated region for block: B:293:0x00d1  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:348:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:349:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00b5  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x01ac  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x050c A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:75:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void applyConstraints(androidx.constraintlayout.core.LinearSystem r36, boolean r37, boolean r38, boolean r39, boolean r40, androidx.constraintlayout.core.SolverVariable r41, androidx.constraintlayout.core.SolverVariable r42, androidx.constraintlayout.core.widgets.ConstraintWidget.DimensionBehaviour r43, boolean r44, androidx.constraintlayout.core.widgets.ConstraintAnchor r45, androidx.constraintlayout.core.widgets.ConstraintAnchor r46, int r47, int r48, int r49, int r50, float r51, boolean r52, boolean r53, boolean r54, boolean r55, boolean r56, int r57, int r58, int r59, int r60, float r61, boolean r62) {
        /*
            Method dump skipped, instructions count: 1351
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.widgets.ConstraintWidget.applyConstraints(androidx.constraintlayout.core.LinearSystem, boolean, boolean, boolean, boolean, androidx.constraintlayout.core.SolverVariable, androidx.constraintlayout.core.SolverVariable, androidx.constraintlayout.core.widgets.ConstraintWidget$DimensionBehaviour, boolean, androidx.constraintlayout.core.widgets.ConstraintAnchor, androidx.constraintlayout.core.widgets.ConstraintAnchor, int, int, int, int, float, boolean, boolean, boolean, boolean, boolean, int, int, int, int, float, boolean):void");
    }

    private boolean isChainHead(int i) {
        ConstraintAnchor constraintAnchor;
        ConstraintAnchor constraintAnchor2;
        int i2 = i * 2;
        ConstraintAnchor[] constraintAnchorArr = this.mListAnchors;
        ConstraintAnchor constraintAnchor3 = constraintAnchorArr[i2];
        ConstraintAnchor constraintAnchor4 = constraintAnchor3.mTarget;
        return (constraintAnchor4 == null || constraintAnchor4.mTarget == constraintAnchor3 || (constraintAnchor2 = (constraintAnchor = constraintAnchorArr[i2 + 1]).mTarget) == null || constraintAnchor2.mTarget != constraintAnchor) ? false : true;
    }

    private static void serializeAttribute(StringBuilder sb, String str, float f, float f2) {
        if (f == f2) {
            return;
        }
        sb.append(str);
        sb.append(" :   ");
        sb.append(f);
        sb.append(",\n");
    }

    public final void addChildrenToSolverByDependency(ConstraintWidgetContainer constraintWidgetContainer, LinearSystem linearSystem, HashSet<ConstraintWidget> hashSet, int i, boolean z) {
        if (z) {
            if (!hashSet.contains(this)) {
                return;
            }
            Optimizer.checkMatchParent(constraintWidgetContainer, linearSystem, this);
            hashSet.remove(this);
            addToSolver(linearSystem, constraintWidgetContainer.optimizeFor(64));
        }
        if (i == 0) {
            HashSet<ConstraintAnchor> dependents = this.mLeft.getDependents();
            if (dependents != null) {
                Iterator<ConstraintAnchor> it = dependents.iterator();
                while (it.hasNext()) {
                    it.next().mOwner.addChildrenToSolverByDependency(constraintWidgetContainer, linearSystem, hashSet, i, true);
                }
            }
            HashSet<ConstraintAnchor> dependents2 = this.mRight.getDependents();
            if (dependents2 != null) {
                Iterator<ConstraintAnchor> it2 = dependents2.iterator();
                while (it2.hasNext()) {
                    it2.next().mOwner.addChildrenToSolverByDependency(constraintWidgetContainer, linearSystem, hashSet, i, true);
                }
                return;
            }
            return;
        }
        HashSet<ConstraintAnchor> dependents3 = this.mTop.getDependents();
        if (dependents3 != null) {
            Iterator<ConstraintAnchor> it3 = dependents3.iterator();
            while (it3.hasNext()) {
                it3.next().mOwner.addChildrenToSolverByDependency(constraintWidgetContainer, linearSystem, hashSet, i, true);
            }
        }
        HashSet<ConstraintAnchor> dependents4 = this.mBottom.getDependents();
        if (dependents4 != null) {
            Iterator<ConstraintAnchor> it4 = dependents4.iterator();
            while (it4.hasNext()) {
                it4.next().mOwner.addChildrenToSolverByDependency(constraintWidgetContainer, linearSystem, hashSet, i, true);
            }
        }
        HashSet<ConstraintAnchor> dependents5 = this.mBaseline.getDependents();
        if (dependents5 != null) {
            Iterator<ConstraintAnchor> it5 = dependents5.iterator();
            while (it5.hasNext()) {
                it5.next().mOwner.addChildrenToSolverByDependency(constraintWidgetContainer, linearSystem, hashSet, i, true);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x021b  */
    /* JADX WARN: Removed duplicated region for block: B:104:0x0226  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x022f  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x024c  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x038e  */
    /* JADX WARN: Removed duplicated region for block: B:181:0x039d  */
    /* JADX WARN: Removed duplicated region for block: B:187:0x03b0  */
    /* JADX WARN: Removed duplicated region for block: B:191:0x03b9  */
    /* JADX WARN: Removed duplicated region for block: B:194:0x03d5  */
    /* JADX WARN: Removed duplicated region for block: B:204:0x03ee  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:214:0x0424  */
    /* JADX WARN: Removed duplicated region for block: B:217:0x0432  */
    /* JADX WARN: Removed duplicated region for block: B:220:0x045b  */
    /* JADX WARN: Removed duplicated region for block: B:223:0x04c0  */
    /* JADX WARN: Removed duplicated region for block: B:239:0x0538  */
    /* JADX WARN: Removed duplicated region for block: B:241:0x053d  */
    /* JADX WARN: Removed duplicated region for block: B:263:0x05d0  */
    /* JADX WARN: Removed duplicated region for block: B:266:0x061a  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:271:0x0685  */
    /* JADX WARN: Removed duplicated region for block: B:275:0x0679  */
    /* JADX WARN: Removed duplicated region for block: B:276:0x05d3  */
    /* JADX WARN: Removed duplicated region for block: B:291:0x053a  */
    /* JADX WARN: Removed duplicated region for block: B:296:0x0524  */
    /* JADX WARN: Removed duplicated region for block: B:297:0x045e  */
    /* JADX WARN: Removed duplicated region for block: B:298:0x043a  */
    /* JADX WARN: Removed duplicated region for block: B:299:0x042c  */
    /* JADX WARN: Removed duplicated region for block: B:301:0x03bc  */
    /* JADX WARN: Removed duplicated region for block: B:305:0x0398  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x007d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:330:0x0376  */
    /* JADX WARN: Removed duplicated region for block: B:331:0x0232  */
    /* JADX WARN: Removed duplicated region for block: B:332:0x0229  */
    /* JADX WARN: Removed duplicated region for block: B:335:0x0208  */
    /* JADX WARN: Removed duplicated region for block: B:337:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:347:0x00c7  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0160  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x019b  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0213  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void addToSolver(androidx.constraintlayout.core.LinearSystem r56, boolean r57) {
        /*
            Method dump skipped, instructions count: 1816
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.widgets.ConstraintWidget.addToSolver(androidx.constraintlayout.core.LinearSystem, boolean):void");
    }

    public boolean allowedInBarrier() {
        return this.mVisibility != 8;
    }

    public final void connect(ConstraintAnchor constraintAnchor, ConstraintAnchor constraintAnchor2, int i) {
        if (constraintAnchor.mOwner == this) {
            connect(constraintAnchor.mType, constraintAnchor2.mOwner, constraintAnchor2.mType, i);
        }
    }

    public void copy(ConstraintWidget constraintWidget, HashMap<ConstraintWidget, ConstraintWidget> hashMap) {
        this.mHorizontalResolution = constraintWidget.mHorizontalResolution;
        this.mVerticalResolution = constraintWidget.mVerticalResolution;
        this.mMatchConstraintDefaultWidth = constraintWidget.mMatchConstraintDefaultWidth;
        this.mMatchConstraintDefaultHeight = constraintWidget.mMatchConstraintDefaultHeight;
        int[] iArr = this.mResolvedMatchConstraintDefault;
        int[] iArr2 = constraintWidget.mResolvedMatchConstraintDefault;
        iArr[0] = iArr2[0];
        iArr[1] = iArr2[1];
        this.mMatchConstraintMinWidth = constraintWidget.mMatchConstraintMinWidth;
        this.mMatchConstraintMaxWidth = constraintWidget.mMatchConstraintMaxWidth;
        this.mMatchConstraintMinHeight = constraintWidget.mMatchConstraintMinHeight;
        this.mMatchConstraintMaxHeight = constraintWidget.mMatchConstraintMaxHeight;
        this.mMatchConstraintPercentHeight = constraintWidget.mMatchConstraintPercentHeight;
        this.mResolvedDimensionRatioSide = constraintWidget.mResolvedDimensionRatioSide;
        this.mResolvedDimensionRatio = constraintWidget.mResolvedDimensionRatio;
        int[] iArr3 = constraintWidget.mMaxDimension;
        this.mMaxDimension = Arrays.copyOf(iArr3, iArr3.length);
        this.mCircleConstraintAngle = constraintWidget.mCircleConstraintAngle;
        this.mHasBaseline = constraintWidget.mHasBaseline;
        this.mInPlaceholder = constraintWidget.mInPlaceholder;
        this.mLeft.reset();
        this.mTop.reset();
        this.mRight.reset();
        this.mBottom.reset();
        this.mBaseline.reset();
        this.mCenterX.reset();
        this.mCenterY.reset();
        this.mCenter.reset();
        this.mListDimensionBehaviors = (DimensionBehaviour[]) Arrays.copyOf(this.mListDimensionBehaviors, 2);
        this.mParent = this.mParent == null ? null : hashMap.get(constraintWidget.mParent);
        this.mWidth = constraintWidget.mWidth;
        this.mHeight = constraintWidget.mHeight;
        this.mDimensionRatio = constraintWidget.mDimensionRatio;
        this.mDimensionRatioSide = constraintWidget.mDimensionRatioSide;
        this.mX = constraintWidget.mX;
        this.mY = constraintWidget.mY;
        this.mBaselineDistance = constraintWidget.mBaselineDistance;
        this.mMinWidth = constraintWidget.mMinWidth;
        this.mMinHeight = constraintWidget.mMinHeight;
        this.mHorizontalBiasPercent = constraintWidget.mHorizontalBiasPercent;
        this.mVerticalBiasPercent = constraintWidget.mVerticalBiasPercent;
        this.mCompanionWidget = constraintWidget.mCompanionWidget;
        this.mVisibility = constraintWidget.mVisibility;
        this.mAnimated = constraintWidget.mAnimated;
        this.mDebugName = constraintWidget.mDebugName;
        this.mType = constraintWidget.mType;
        this.mHorizontalChainStyle = constraintWidget.mHorizontalChainStyle;
        this.mVerticalChainStyle = constraintWidget.mVerticalChainStyle;
        float[] fArr = this.mWeight;
        float[] fArr2 = constraintWidget.mWeight;
        fArr[0] = fArr2[0];
        fArr[1] = fArr2[1];
        ConstraintWidget[] constraintWidgetArr = this.mListNextMatchConstraintsWidget;
        ConstraintWidget[] constraintWidgetArr2 = constraintWidget.mListNextMatchConstraintsWidget;
        constraintWidgetArr[0] = constraintWidgetArr2[0];
        constraintWidgetArr[1] = constraintWidgetArr2[1];
        ConstraintWidget[] constraintWidgetArr3 = this.mNextChainWidget;
        ConstraintWidget[] constraintWidgetArr4 = constraintWidget.mNextChainWidget;
        constraintWidgetArr3[0] = constraintWidgetArr4[0];
        constraintWidgetArr3[1] = constraintWidgetArr4[1];
        ConstraintWidget constraintWidget2 = constraintWidget.mHorizontalNextWidget;
        this.mHorizontalNextWidget = constraintWidget2 == null ? null : hashMap.get(constraintWidget2);
        ConstraintWidget constraintWidget3 = constraintWidget.mVerticalNextWidget;
        this.mVerticalNextWidget = constraintWidget3 != null ? hashMap.get(constraintWidget3) : null;
    }

    public final void createObjectVariables(LinearSystem linearSystem) {
        linearSystem.createObjectVariable(this.mLeft);
        linearSystem.createObjectVariable(this.mTop);
        linearSystem.createObjectVariable(this.mRight);
        linearSystem.createObjectVariable(this.mBottom);
        if (this.mBaselineDistance > 0) {
            linearSystem.createObjectVariable(this.mBaseline);
        }
    }

    public final void ensureWidgetRuns() {
        if (this.mHorizontalRun == null) {
            this.mHorizontalRun = new HorizontalWidgetRun(this);
        }
        if (this.mVerticalRun == null) {
            this.mVerticalRun = new VerticalWidgetRun(this);
        }
    }

    public ConstraintAnchor getAnchor(ConstraintAnchor.Type type) {
        switch (type) {
            case EF0:
                return null;
            case LEFT:
                return this.mLeft;
            case TOP:
                return this.mTop;
            case RIGHT:
                return this.mRight;
            case BOTTOM:
                return this.mBottom;
            case BASELINE:
                return this.mBaseline;
            case CENTER:
                return this.mCenter;
            case CENTER_X:
                return this.mCenterX;
            case CENTER_Y:
                return this.mCenterY;
            default:
                throw new AssertionError(type.name());
        }
    }

    public final int getBaselineDistance() {
        return this.mBaselineDistance;
    }

    public final float getBiasPercent(int i) {
        if (i == 0) {
            return this.mHorizontalBiasPercent;
        }
        if (i == 1) {
            return this.mVerticalBiasPercent;
        }
        return -1.0f;
    }

    public final int getBottom() {
        return getY() + this.mHeight;
    }

    public final Object getCompanionWidget() {
        return this.mCompanionWidget;
    }

    public final String getDebugName() {
        return this.mDebugName;
    }

    public final DimensionBehaviour getDimensionBehaviour(int i) {
        if (i == 0) {
            return this.mListDimensionBehaviors[0];
        }
        if (i == 1) {
            return this.mListDimensionBehaviors[1];
        }
        return null;
    }

    public final int getDimensionRatioSide() {
        return this.mDimensionRatioSide;
    }

    public final int getHeight() {
        if (this.mVisibility == 8) {
            return 0;
        }
        return this.mHeight;
    }

    public final float getHorizontalBiasPercent() {
        return this.mHorizontalBiasPercent;
    }

    public final int getHorizontalChainStyle() {
        return this.mHorizontalChainStyle;
    }

    public final int getLastHorizontalMeasureSpec() {
        return this.mLastHorizontalMeasureSpec;
    }

    public final int getLastVerticalMeasureSpec() {
        return this.mLastVerticalMeasureSpec;
    }

    public final int getMaxHeight() {
        return this.mMaxDimension[1];
    }

    public final int getMaxWidth() {
        return this.mMaxDimension[0];
    }

    public final int getMinHeight() {
        return this.mMinHeight;
    }

    public final int getMinWidth() {
        return this.mMinWidth;
    }

    public final ConstraintWidget getNextChainMember(int i) {
        ConstraintAnchor constraintAnchor;
        ConstraintAnchor constraintAnchor2;
        if (i != 0) {
            if (i == 1 && (constraintAnchor2 = (constraintAnchor = this.mBottom).mTarget) != null && constraintAnchor2.mTarget == constraintAnchor) {
                return constraintAnchor2.mOwner;
            }
            return null;
        }
        ConstraintAnchor constraintAnchor3 = this.mRight;
        ConstraintAnchor constraintAnchor4 = constraintAnchor3.mTarget;
        if (constraintAnchor4 == null || constraintAnchor4.mTarget != constraintAnchor3) {
            return null;
        }
        return constraintAnchor4.mOwner;
    }

    public final ConstraintWidget getPreviousChainMember(int i) {
        ConstraintAnchor constraintAnchor;
        ConstraintAnchor constraintAnchor2;
        if (i != 0) {
            if (i == 1 && (constraintAnchor2 = (constraintAnchor = this.mTop).mTarget) != null && constraintAnchor2.mTarget == constraintAnchor) {
                return constraintAnchor2.mOwner;
            }
            return null;
        }
        ConstraintAnchor constraintAnchor3 = this.mLeft;
        ConstraintAnchor constraintAnchor4 = constraintAnchor3.mTarget;
        if (constraintAnchor4 == null || constraintAnchor4.mTarget != constraintAnchor3) {
            return null;
        }
        return constraintAnchor4.mOwner;
    }

    public final int getRight() {
        return getX() + this.mWidth;
    }

    public void getSceneString(StringBuilder sb) {
        sb.append("  " + this.stringId + ":{\n");
        StringBuilder sb2 = new StringBuilder("    actualWidth:");
        sb2.append(this.mWidth);
        sb.append(sb2.toString());
        sb.append("\n");
        sb.append("    actualHeight:" + this.mHeight);
        sb.append("\n");
        sb.append("    actualLeft:" + this.mX);
        sb.append("\n");
        sb.append("    actualTop:" + this.mY);
        sb.append("\n");
        getSceneString(sb, "left", this.mLeft);
        getSceneString(sb, "top", this.mTop);
        getSceneString(sb, "right", this.mRight);
        getSceneString(sb, "bottom", this.mBottom);
        getSceneString(sb, "baseline", this.mBaseline);
        getSceneString(sb, "centerX", this.mCenterX);
        getSceneString(sb, "centerY", this.mCenterY);
        int i = this.mWidth;
        int i2 = this.mMinWidth;
        int i3 = this.mMaxDimension[0];
        int i4 = this.mMatchConstraintMinWidth;
        int i5 = this.mMatchConstraintDefaultWidth;
        float f = this.mMatchConstraintPercentWidth;
        DimensionBehaviour dimensionBehaviour = this.mListDimensionBehaviors[0];
        float f2 = this.mWeight[0];
        getSceneString(sb, "    width", i, i2, i3, i4, i5, f, dimensionBehaviour);
        int i6 = this.mHeight;
        int i7 = this.mMinHeight;
        int i8 = this.mMaxDimension[1];
        int i9 = this.mMatchConstraintMinHeight;
        int i10 = this.mMatchConstraintDefaultHeight;
        float f3 = this.mMatchConstraintPercentHeight;
        DimensionBehaviour dimensionBehaviour2 = this.mListDimensionBehaviors[1];
        float f4 = this.mWeight[1];
        getSceneString(sb, "    height", i6, i7, i8, i9, i10, f3, dimensionBehaviour2);
        float f5 = this.mDimensionRatio;
        int i11 = this.mDimensionRatioSide;
        if (f5 != 0.0f) {
            sb.append("    dimensionRatio");
            sb.append(" :  [");
            sb.append(f5);
            sb.append(",");
            sb.append(i11);
            sb.append("");
            sb.append("],\n");
        }
        serializeAttribute(sb, "    horizontalBias", this.mHorizontalBiasPercent, 0.5f);
        serializeAttribute(sb, "    verticalBias", this.mVerticalBiasPercent, 0.5f);
        serializeAttribute(this.mHorizontalChainStyle, 0, "    horizontalChainStyle", sb);
        serializeAttribute(this.mVerticalChainStyle, 0, "    verticalChainStyle", sb);
        sb.append("  }");
    }

    public final float getVerticalBiasPercent() {
        return this.mVerticalBiasPercent;
    }

    public final int getVerticalChainStyle() {
        return this.mVerticalChainStyle;
    }

    public final int getVisibility() {
        return this.mVisibility;
    }

    public final int getWidth() {
        if (this.mVisibility == 8) {
            return 0;
        }
        return this.mWidth;
    }

    public final int getX() {
        ConstraintWidget constraintWidget = this.mParent;
        return (constraintWidget == null || !(constraintWidget instanceof ConstraintWidgetContainer)) ? this.mX : ((ConstraintWidgetContainer) constraintWidget).mPaddingLeft + this.mX;
    }

    public final int getY() {
        ConstraintWidget constraintWidget = this.mParent;
        return (constraintWidget == null || !(constraintWidget instanceof ConstraintWidgetContainer)) ? this.mY : ((ConstraintWidgetContainer) constraintWidget).mPaddingTop + this.mY;
    }

    public final boolean hasBaseline() {
        return this.mHasBaseline;
    }

    public final boolean hasDanglingDimension(int i) {
        if (i == 0) {
            return (this.mLeft.mTarget != null ? 1 : 0) + (this.mRight.mTarget != null ? 1 : 0) < 2;
        }
        return ((this.mTop.mTarget != null ? 1 : 0) + (this.mBottom.mTarget != null ? 1 : 0)) + (this.mBaseline.mTarget != null ? 1 : 0) < 2;
    }

    public final boolean hasDimensionOverride() {
        return (this.mWidthOverride == -1 && this.mHeightOverride == -1) ? false : true;
    }

    public final boolean hasResolvedTargets(int i, int i2) {
        ConstraintAnchor constraintAnchor;
        ConstraintAnchor constraintAnchor2;
        if (i == 0) {
            ConstraintAnchor constraintAnchor3 = this.mLeft.mTarget;
            if (constraintAnchor3 != null && constraintAnchor3.hasFinalValue() && (constraintAnchor2 = this.mRight.mTarget) != null && constraintAnchor2.hasFinalValue()) {
                return (this.mRight.mTarget.getFinalValue() - this.mRight.getMargin()) - (this.mLeft.getMargin() + this.mLeft.mTarget.getFinalValue()) >= i2;
            }
        } else {
            ConstraintAnchor constraintAnchor4 = this.mTop.mTarget;
            if (constraintAnchor4 != null && constraintAnchor4.hasFinalValue() && (constraintAnchor = this.mBottom.mTarget) != null && constraintAnchor.hasFinalValue()) {
                return (this.mBottom.mTarget.getFinalValue() - this.mBottom.getMargin()) - (this.mTop.getMargin() + this.mTop.mTarget.getFinalValue()) >= i2;
            }
        }
        return false;
    }

    public final void immediateConnect(ConstraintAnchor.Type type, ConstraintWidget constraintWidget, ConstraintAnchor.Type type2, int i, int i2) {
        getAnchor(type).connect(constraintWidget.getAnchor(type2), i, i2, true);
    }

    public final boolean isHorizontalSolvingPassDone() {
        return this.mHorizontalSolvingPass;
    }

    public final boolean isInBarrier(int i) {
        return this.mIsInBarrier[i];
    }

    public final boolean isInHorizontalChain() {
        ConstraintAnchor constraintAnchor = this.mLeft;
        ConstraintAnchor constraintAnchor2 = constraintAnchor.mTarget;
        if (constraintAnchor2 != null && constraintAnchor2.mTarget == constraintAnchor) {
            return true;
        }
        ConstraintAnchor constraintAnchor3 = this.mRight;
        ConstraintAnchor constraintAnchor4 = constraintAnchor3.mTarget;
        return constraintAnchor4 != null && constraintAnchor4.mTarget == constraintAnchor3;
    }

    public final boolean isInPlaceholder() {
        return this.mInPlaceholder;
    }

    public final boolean isInVerticalChain() {
        ConstraintAnchor constraintAnchor = this.mTop;
        ConstraintAnchor constraintAnchor2 = constraintAnchor.mTarget;
        if (constraintAnchor2 != null && constraintAnchor2.mTarget == constraintAnchor) {
            return true;
        }
        ConstraintAnchor constraintAnchor3 = this.mBottom;
        ConstraintAnchor constraintAnchor4 = constraintAnchor3.mTarget;
        return constraintAnchor4 != null && constraintAnchor4.mTarget == constraintAnchor3;
    }

    public final boolean isInVirtualLayout() {
        return this.mInVirtualLayout;
    }

    public final boolean isMeasureRequested() {
        return this.mMeasureRequested && this.mVisibility != 8;
    }

    public boolean isResolvedHorizontally() {
        return this.mResolvedHorizontal || (this.mLeft.hasFinalValue() && this.mRight.hasFinalValue());
    }

    public boolean isResolvedVertically() {
        return this.mResolvedVertical || (this.mTop.hasFinalValue() && this.mBottom.hasFinalValue());
    }

    public final boolean isVerticalSolvingPassDone() {
        return this.mVerticalSolvingPass;
    }

    public final void markHorizontalSolvingPassDone() {
        this.mHorizontalSolvingPass = true;
    }

    public final void markVerticalSolvingPassDone() {
        this.mVerticalSolvingPass = true;
    }

    public void reset() {
        this.mLeft.reset();
        this.mTop.reset();
        this.mRight.reset();
        this.mBottom.reset();
        this.mBaseline.reset();
        this.mCenterX.reset();
        this.mCenterY.reset();
        this.mCenter.reset();
        this.mParent = null;
        this.mCircleConstraintAngle = Float.NaN;
        this.mWidth = 0;
        this.mHeight = 0;
        this.mDimensionRatio = 0.0f;
        this.mDimensionRatioSide = -1;
        this.mX = 0;
        this.mY = 0;
        this.mBaselineDistance = 0;
        this.mMinWidth = 0;
        this.mMinHeight = 0;
        this.mHorizontalBiasPercent = 0.5f;
        this.mVerticalBiasPercent = 0.5f;
        DimensionBehaviour[] dimensionBehaviourArr = this.mListDimensionBehaviors;
        DimensionBehaviour dimensionBehaviour = DimensionBehaviour.FIXED;
        dimensionBehaviourArr[0] = dimensionBehaviour;
        dimensionBehaviourArr[1] = dimensionBehaviour;
        this.mCompanionWidget = null;
        this.mVisibility = 0;
        this.mType = null;
        this.mHorizontalChainStyle = 0;
        this.mVerticalChainStyle = 0;
        float[] fArr = this.mWeight;
        fArr[0] = -1.0f;
        fArr[1] = -1.0f;
        this.mHorizontalResolution = -1;
        this.mVerticalResolution = -1;
        int[] iArr = this.mMaxDimension;
        iArr[0] = Integer.MAX_VALUE;
        iArr[1] = Integer.MAX_VALUE;
        this.mMatchConstraintDefaultWidth = 0;
        this.mMatchConstraintDefaultHeight = 0;
        this.mMatchConstraintPercentWidth = 1.0f;
        this.mMatchConstraintPercentHeight = 1.0f;
        this.mMatchConstraintMaxWidth = Integer.MAX_VALUE;
        this.mMatchConstraintMaxHeight = Integer.MAX_VALUE;
        this.mMatchConstraintMinWidth = 0;
        this.mMatchConstraintMinHeight = 0;
        this.mResolvedDimensionRatioSide = -1;
        this.mResolvedDimensionRatio = 1.0f;
        boolean[] zArr = this.isTerminalWidget;
        zArr[0] = true;
        zArr[1] = true;
        this.mInVirtualLayout = false;
        boolean[] zArr2 = this.mIsInBarrier;
        zArr2[0] = false;
        zArr2[1] = false;
        this.mMeasureRequested = true;
        int[] iArr2 = this.mResolvedMatchConstraintDefault;
        iArr2[0] = 0;
        iArr2[1] = 0;
        this.mWidthOverride = -1;
        this.mHeightOverride = -1;
    }

    public final void resetAnchors() {
        ConstraintWidget constraintWidget = this.mParent;
        if (constraintWidget != null && (constraintWidget instanceof ConstraintWidgetContainer)) {
            ((ConstraintWidgetContainer) constraintWidget).getClass();
        }
        int size = this.mAnchors.size();
        for (int i = 0; i < size; i++) {
            this.mAnchors.get(i).reset();
        }
    }

    public final void resetFinalResolution() {
        this.mResolvedHorizontal = false;
        this.mResolvedVertical = false;
        this.mHorizontalSolvingPass = false;
        this.mVerticalSolvingPass = false;
        int size = this.mAnchors.size();
        for (int i = 0; i < size; i++) {
            this.mAnchors.get(i).resetFinalResolution();
        }
    }

    public void resetSolverVariables(Cache cache) {
        this.mLeft.resetSolverVariable();
        this.mTop.resetSolverVariable();
        this.mRight.resetSolverVariable();
        this.mBottom.resetSolverVariable();
        this.mBaseline.resetSolverVariable();
        this.mCenter.resetSolverVariable();
        this.mCenterX.resetSolverVariable();
        this.mCenterY.resetSolverVariable();
    }

    public final void setAnimated() {
        this.mAnimated = true;
    }

    public final void setBaselineDistance(int i) {
        this.mBaselineDistance = i;
        this.mHasBaseline = i > 0;
    }

    public final void setCompanionWidget(Object obj) {
        this.mCompanionWidget = obj;
    }

    public final void setDebugName(String str) {
        this.mDebugName = str;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x0086 -> B:31:0x0087). Please report as a decompilation issue!!! */
    public final void setDimensionRatio(String str) {
        float f;
        int i = 0;
        if (str == null || str.length() == 0) {
            this.mDimensionRatio = 0.0f;
            return;
        }
        int length = str.length();
        int indexOf = str.indexOf(44);
        int i2 = -1;
        if (indexOf > 0 && indexOf < length - 1) {
            String substring = str.substring(0, indexOf);
            i2 = substring.equalsIgnoreCase("W") ? 0 : substring.equalsIgnoreCase("H") ? 1 : -1;
            r3 = indexOf + 1;
        }
        int indexOf2 = str.indexOf(58);
        if (indexOf2 < 0 || indexOf2 >= length - 1) {
            String substring2 = str.substring(r3);
            if (substring2.length() > 0) {
                f = Float.parseFloat(substring2);
            }
            f = i;
        } else {
            String substring3 = str.substring(r3, indexOf2);
            String substring4 = str.substring(indexOf2 + 1);
            if (substring3.length() > 0 && substring4.length() > 0) {
                float parseFloat = Float.parseFloat(substring3);
                float parseFloat2 = Float.parseFloat(substring4);
                if (parseFloat > 0.0f && parseFloat2 > 0.0f) {
                    f = i2 == 1 ? Math.abs(parseFloat2 / parseFloat) : Math.abs(parseFloat / parseFloat2);
                }
            }
            f = i;
        }
        i = (f > i ? 1 : (f == i ? 0 : -1));
        if (i > 0) {
            this.mDimensionRatio = f;
            this.mDimensionRatioSide = i2;
        }
    }

    public final void setFinalBaseline(int i) {
        if (this.mHasBaseline) {
            int i2 = i - this.mBaselineDistance;
            int i3 = this.mHeight + i2;
            this.mY = i2;
            this.mTop.setFinalValue(i2);
            this.mBottom.setFinalValue(i3);
            this.mBaseline.setFinalValue(i);
            this.mResolvedVertical = true;
        }
    }

    public final void setFinalHorizontal(int i, int i2) {
        if (this.mResolvedHorizontal) {
            return;
        }
        this.mLeft.setFinalValue(i);
        this.mRight.setFinalValue(i2);
        this.mX = i;
        this.mWidth = i2 - i;
        this.mResolvedHorizontal = true;
    }

    public final void setFinalLeft() {
        this.mLeft.setFinalValue(0);
        this.mX = 0;
    }

    public final void setFinalTop() {
        this.mTop.setFinalValue(0);
        this.mY = 0;
    }

    public final void setFinalVertical(int i, int i2) {
        if (this.mResolvedVertical) {
            return;
        }
        this.mTop.setFinalValue(i);
        this.mBottom.setFinalValue(i2);
        this.mY = i;
        this.mHeight = i2 - i;
        if (this.mHasBaseline) {
            this.mBaseline.setFinalValue(i + this.mBaselineDistance);
        }
        this.mResolvedVertical = true;
    }

    public final void setHasBaseline(boolean z) {
        this.mHasBaseline = z;
    }

    public final void setHeight(int i) {
        this.mHeight = i;
        int i2 = this.mMinHeight;
        if (i < i2) {
            this.mHeight = i2;
        }
    }

    public final void setHorizontalBiasPercent(float f) {
        this.mHorizontalBiasPercent = f;
    }

    public final void setHorizontalChainStyle(int i) {
        this.mHorizontalChainStyle = i;
    }

    public final void setHorizontalDimensionBehaviour(DimensionBehaviour dimensionBehaviour) {
        this.mListDimensionBehaviors[0] = dimensionBehaviour;
    }

    protected final void setInBarrier(int i, boolean z) {
        this.mIsInBarrier[i] = z;
    }

    public final void setInPlaceholder() {
        this.mInPlaceholder = true;
    }

    public final void setInVirtualLayout() {
        this.mInVirtualLayout = true;
    }

    public final void setLastMeasureSpec(int i, int i2) {
        this.mLastHorizontalMeasureSpec = i;
        this.mLastVerticalMeasureSpec = i2;
        this.mMeasureRequested = false;
    }

    public final void setMaxHeight(int i) {
        this.mMaxDimension[1] = i;
    }

    public final void setMaxWidth(int i) {
        this.mMaxDimension[0] = i;
    }

    public final void setMeasureRequested() {
        this.mMeasureRequested = true;
    }

    public final void setMinHeight(int i) {
        if (i < 0) {
            this.mMinHeight = 0;
        } else {
            this.mMinHeight = i;
        }
    }

    public final void setMinWidth(int i) {
        if (i < 0) {
            this.mMinWidth = 0;
        } else {
            this.mMinWidth = i;
        }
    }

    public final void setOrigin(int i, int i2) {
        this.mX = i;
        this.mY = i2;
    }

    public final void setVerticalBiasPercent(float f) {
        this.mVerticalBiasPercent = f;
    }

    public final void setVerticalChainStyle(int i) {
        this.mVerticalChainStyle = i;
    }

    public final void setVerticalDimensionBehaviour(DimensionBehaviour dimensionBehaviour) {
        this.mListDimensionBehaviors[1] = dimensionBehaviour;
    }

    public final void setVisibility(int i) {
        this.mVisibility = i;
    }

    public final void setWidth(int i) {
        this.mWidth = i;
        int i2 = this.mMinWidth;
        if (i < i2) {
            this.mWidth = i2;
        }
    }

    public final void setWrapBehaviorInParent(int i) {
        if (i < 0 || i > 3) {
            return;
        }
        this.mWrapBehaviorInParent = i;
    }

    public final void setX(int i) {
        this.mX = i;
    }

    public final void setY(int i) {
        this.mY = i;
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        String str2 = "";
        if (this.mType != null) {
            str = "type: " + this.mType + " ";
        } else {
            str = "";
        }
        sb.append(str);
        if (this.mDebugName != null) {
            str2 = "id: " + this.mDebugName + " ";
        }
        sb.append(str2);
        sb.append("(");
        sb.append(this.mX);
        sb.append(", ");
        sb.append(this.mY);
        sb.append(") - (");
        sb.append(this.mWidth);
        sb.append(" x ");
        sb.append(this.mHeight);
        sb.append(")");
        return sb.toString();
    }

    public void updateFromRuns(boolean z, boolean z2) {
        int i;
        int i2;
        boolean isResolved = z & this.mHorizontalRun.isResolved();
        boolean isResolved2 = z2 & this.mVerticalRun.isResolved();
        HorizontalWidgetRun horizontalWidgetRun = this.mHorizontalRun;
        int i3 = horizontalWidgetRun.start.value;
        VerticalWidgetRun verticalWidgetRun = this.mVerticalRun;
        int i4 = verticalWidgetRun.start.value;
        int i5 = horizontalWidgetRun.end.value;
        int i6 = verticalWidgetRun.end.value;
        int i7 = i6 - i4;
        if (i5 - i3 < 0 || i7 < 0 || i3 == Integer.MIN_VALUE || i3 == Integer.MAX_VALUE || i4 == Integer.MIN_VALUE || i4 == Integer.MAX_VALUE || i5 == Integer.MIN_VALUE || i5 == Integer.MAX_VALUE || i6 == Integer.MIN_VALUE || i6 == Integer.MAX_VALUE) {
            i5 = 0;
            i3 = 0;
            i6 = 0;
            i4 = 0;
        }
        int i8 = i5 - i3;
        int i9 = i6 - i4;
        if (isResolved) {
            this.mX = i3;
        }
        if (isResolved2) {
            this.mY = i4;
        }
        if (this.mVisibility == 8) {
            this.mWidth = 0;
            this.mHeight = 0;
            return;
        }
        DimensionBehaviour dimensionBehaviour = DimensionBehaviour.FIXED;
        if (isResolved) {
            if (this.mListDimensionBehaviors[0] == dimensionBehaviour && i8 < (i2 = this.mWidth)) {
                i8 = i2;
            }
            this.mWidth = i8;
            int i10 = this.mMinWidth;
            if (i8 < i10) {
                this.mWidth = i10;
            }
        }
        if (isResolved2) {
            if (this.mListDimensionBehaviors[1] == dimensionBehaviour && i9 < (i = this.mHeight)) {
                i9 = i;
            }
            this.mHeight = i9;
            int i11 = this.mMinHeight;
            if (i9 < i11) {
                this.mHeight = i11;
            }
        }
    }

    public void updateFromSolver(LinearSystem linearSystem, boolean z) {
        int i;
        int i2;
        VerticalWidgetRun verticalWidgetRun;
        HorizontalWidgetRun horizontalWidgetRun;
        ConstraintAnchor constraintAnchor = this.mLeft;
        linearSystem.getClass();
        int objectVariableValue = LinearSystem.getObjectVariableValue(constraintAnchor);
        int objectVariableValue2 = LinearSystem.getObjectVariableValue(this.mTop);
        int objectVariableValue3 = LinearSystem.getObjectVariableValue(this.mRight);
        int objectVariableValue4 = LinearSystem.getObjectVariableValue(this.mBottom);
        if (z && (horizontalWidgetRun = this.mHorizontalRun) != null) {
            DependencyNode dependencyNode = horizontalWidgetRun.start;
            if (dependencyNode.resolved) {
                DependencyNode dependencyNode2 = horizontalWidgetRun.end;
                if (dependencyNode2.resolved) {
                    objectVariableValue = dependencyNode.value;
                    objectVariableValue3 = dependencyNode2.value;
                }
            }
        }
        if (z && (verticalWidgetRun = this.mVerticalRun) != null) {
            DependencyNode dependencyNode3 = verticalWidgetRun.start;
            if (dependencyNode3.resolved) {
                DependencyNode dependencyNode4 = verticalWidgetRun.end;
                if (dependencyNode4.resolved) {
                    objectVariableValue2 = dependencyNode3.value;
                    objectVariableValue4 = dependencyNode4.value;
                }
            }
        }
        int i3 = objectVariableValue4 - objectVariableValue2;
        if (objectVariableValue3 - objectVariableValue < 0 || i3 < 0 || objectVariableValue == Integer.MIN_VALUE || objectVariableValue == Integer.MAX_VALUE || objectVariableValue2 == Integer.MIN_VALUE || objectVariableValue2 == Integer.MAX_VALUE || objectVariableValue3 == Integer.MIN_VALUE || objectVariableValue3 == Integer.MAX_VALUE || objectVariableValue4 == Integer.MIN_VALUE || objectVariableValue4 == Integer.MAX_VALUE) {
            objectVariableValue = 0;
            objectVariableValue2 = 0;
            objectVariableValue3 = 0;
            objectVariableValue4 = 0;
        }
        int i4 = objectVariableValue3 - objectVariableValue;
        int i5 = objectVariableValue4 - objectVariableValue2;
        this.mX = objectVariableValue;
        this.mY = objectVariableValue2;
        if (this.mVisibility == 8) {
            this.mWidth = 0;
            this.mHeight = 0;
            return;
        }
        DimensionBehaviour[] dimensionBehaviourArr = this.mListDimensionBehaviors;
        DimensionBehaviour dimensionBehaviour = dimensionBehaviourArr[0];
        DimensionBehaviour dimensionBehaviour2 = DimensionBehaviour.FIXED;
        if (dimensionBehaviour == dimensionBehaviour2 && i4 < (i2 = this.mWidth)) {
            i4 = i2;
        }
        if (dimensionBehaviourArr[1] == dimensionBehaviour2 && i5 < (i = this.mHeight)) {
            i5 = i;
        }
        this.mWidth = i4;
        this.mHeight = i5;
        int i6 = this.mMinHeight;
        if (i5 < i6) {
            this.mHeight = i6;
        }
        int i7 = this.mMinWidth;
        if (i4 < i7) {
            this.mWidth = i7;
        }
        int i8 = this.mMatchConstraintMaxWidth;
        DimensionBehaviour dimensionBehaviour3 = DimensionBehaviour.MATCH_CONSTRAINT;
        if (i8 > 0 && dimensionBehaviour == dimensionBehaviour3) {
            this.mWidth = Math.min(this.mWidth, i8);
        }
        int i9 = this.mMatchConstraintMaxHeight;
        if (i9 > 0 && this.mListDimensionBehaviors[1] == dimensionBehaviour3) {
            this.mHeight = Math.min(this.mHeight, i9);
        }
        int i10 = this.mWidth;
        if (i4 != i10) {
            this.mWidthOverride = i10;
        }
        int i11 = this.mHeight;
        if (i5 != i11) {
            this.mHeightOverride = i11;
        }
    }

    public final void connect(ConstraintAnchor.Type type, ConstraintWidget constraintWidget, ConstraintAnchor.Type type2, int i) {
        boolean z;
        ConstraintAnchor.Type type3 = ConstraintAnchor.Type.CENTER;
        ConstraintAnchor.Type type4 = ConstraintAnchor.Type.CENTER_Y;
        ConstraintAnchor.Type type5 = ConstraintAnchor.Type.CENTER_X;
        ConstraintAnchor.Type type6 = ConstraintAnchor.Type.LEFT;
        ConstraintAnchor.Type type7 = ConstraintAnchor.Type.TOP;
        ConstraintAnchor.Type type8 = ConstraintAnchor.Type.RIGHT;
        ConstraintAnchor.Type type9 = ConstraintAnchor.Type.BOTTOM;
        if (type == type3) {
            if (type2 != type3) {
                if (type2 == type6 || type2 == type8) {
                    connect(type6, constraintWidget, type2, 0);
                    connect(type8, constraintWidget, type2, 0);
                    getAnchor(type3).connect(constraintWidget.getAnchor(type2), 0);
                    return;
                } else {
                    if (type2 == type7 || type2 == type9) {
                        connect(type7, constraintWidget, type2, 0);
                        connect(type9, constraintWidget, type2, 0);
                        getAnchor(type3).connect(constraintWidget.getAnchor(type2), 0);
                        return;
                    }
                    return;
                }
            }
            ConstraintAnchor anchor = getAnchor(type6);
            ConstraintAnchor anchor2 = getAnchor(type8);
            ConstraintAnchor anchor3 = getAnchor(type7);
            ConstraintAnchor anchor4 = getAnchor(type9);
            boolean z2 = true;
            if ((anchor == null || !anchor.isConnected()) && (anchor2 == null || !anchor2.isConnected())) {
                connect(type6, constraintWidget, type6, 0);
                connect(type8, constraintWidget, type8, 0);
                z = true;
            } else {
                z = false;
            }
            if ((anchor3 == null || !anchor3.isConnected()) && (anchor4 == null || !anchor4.isConnected())) {
                connect(type7, constraintWidget, type7, 0);
                connect(type9, constraintWidget, type9, 0);
            } else {
                z2 = false;
            }
            if (z && z2) {
                getAnchor(type3).connect(constraintWidget.getAnchor(type3), 0);
                return;
            } else if (z) {
                getAnchor(type5).connect(constraintWidget.getAnchor(type5), 0);
                return;
            } else {
                if (z2) {
                    getAnchor(type4).connect(constraintWidget.getAnchor(type4), 0);
                    return;
                }
                return;
            }
        }
        if (type == type5 && (type2 == type6 || type2 == type8)) {
            ConstraintAnchor anchor5 = getAnchor(type6);
            ConstraintAnchor anchor6 = constraintWidget.getAnchor(type2);
            ConstraintAnchor anchor7 = getAnchor(type8);
            anchor5.connect(anchor6, 0);
            anchor7.connect(anchor6, 0);
            getAnchor(type5).connect(anchor6, 0);
            return;
        }
        if (type == type4 && (type2 == type7 || type2 == type9)) {
            ConstraintAnchor anchor8 = constraintWidget.getAnchor(type2);
            getAnchor(type7).connect(anchor8, 0);
            getAnchor(type9).connect(anchor8, 0);
            getAnchor(type4).connect(anchor8, 0);
            return;
        }
        if (type == type5 && type2 == type5) {
            getAnchor(type6).connect(constraintWidget.getAnchor(type6), 0);
            getAnchor(type8).connect(constraintWidget.getAnchor(type8), 0);
            getAnchor(type5).connect(constraintWidget.getAnchor(type2), 0);
            return;
        }
        if (type == type4 && type2 == type4) {
            getAnchor(type7).connect(constraintWidget.getAnchor(type7), 0);
            getAnchor(type9).connect(constraintWidget.getAnchor(type9), 0);
            getAnchor(type4).connect(constraintWidget.getAnchor(type2), 0);
            return;
        }
        ConstraintAnchor anchor9 = getAnchor(type);
        ConstraintAnchor anchor10 = constraintWidget.getAnchor(type2);
        if (anchor9.isValidConnection(anchor10)) {
            ConstraintAnchor.Type type10 = ConstraintAnchor.Type.BASELINE;
            if (type == type10) {
                ConstraintAnchor anchor11 = getAnchor(type7);
                ConstraintAnchor anchor12 = getAnchor(type9);
                if (anchor11 != null) {
                    anchor11.reset();
                }
                if (anchor12 != null) {
                    anchor12.reset();
                }
            } else if (type == type7 || type == type9) {
                ConstraintAnchor anchor13 = getAnchor(type10);
                if (anchor13 != null) {
                    anchor13.reset();
                }
                ConstraintAnchor anchor14 = getAnchor(type3);
                if (anchor14.mTarget != anchor10) {
                    anchor14.reset();
                }
                ConstraintAnchor opposite = getAnchor(type).getOpposite();
                ConstraintAnchor anchor15 = getAnchor(type4);
                if (anchor15.isConnected()) {
                    opposite.reset();
                    anchor15.reset();
                }
            } else if (type == type6 || type == type8) {
                ConstraintAnchor anchor16 = getAnchor(type3);
                if (anchor16.mTarget != anchor10) {
                    anchor16.reset();
                }
                ConstraintAnchor opposite2 = getAnchor(type).getOpposite();
                ConstraintAnchor anchor17 = getAnchor(type5);
                if (anchor17.isConnected()) {
                    opposite2.reset();
                    anchor17.reset();
                }
            }
            anchor9.connect(anchor10, i);
        }
    }

    private static void serializeAttribute(int i, int i2, String str, StringBuilder sb) {
        if (i == i2) {
            return;
        }
        sb.append(str);
        sb.append(" :   ");
        sb.append(i);
        sb.append(",\n");
    }

    private static void getSceneString(StringBuilder sb, String str, int i, int i2, int i3, int i4, int i5, float f, DimensionBehaviour dimensionBehaviour) {
        sb.append(str);
        sb.append(" :  {\n");
        String str2 = dimensionBehaviour.toString();
        if (!"FIXED".equals(str2)) {
            sb.append("      behavior");
            sb.append(" :   ");
            sb.append(str2);
            sb.append(",\n");
        }
        serializeAttribute(i, 0, "      size", sb);
        serializeAttribute(i2, 0, "      min", sb);
        serializeAttribute(i3, Integer.MAX_VALUE, "      max", sb);
        serializeAttribute(i4, 0, "      matchMin", sb);
        serializeAttribute(i5, 0, "      matchDef", sb);
        serializeAttribute(sb, "      matchPercent", f, 1.0f);
        sb.append("    },\n");
    }

    private static void getSceneString(StringBuilder sb, String str, ConstraintAnchor constraintAnchor) {
        if (constraintAnchor.mTarget == null) {
            return;
        }
        sb.append("    ");
        sb.append(str);
        sb.append(" : [ '");
        sb.append(constraintAnchor.mTarget);
        sb.append("'");
        if (constraintAnchor.mGoneMargin != Integer.MIN_VALUE || constraintAnchor.mMargin != 0) {
            sb.append(",");
            sb.append(constraintAnchor.mMargin);
            if (constraintAnchor.mGoneMargin != Integer.MIN_VALUE) {
                sb.append(",");
                sb.append(constraintAnchor.mGoneMargin);
                sb.append(",");
            }
        }
        sb.append(" ] ,\n");
    }
}
