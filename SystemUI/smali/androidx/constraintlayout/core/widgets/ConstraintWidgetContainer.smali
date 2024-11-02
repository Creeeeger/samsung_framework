.class public final Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;
.super Landroidx/constraintlayout/core/widgets/WidgetContainer;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public horizontalWrapMax:Ljava/lang/ref/WeakReference;

.field public horizontalWrapMin:Ljava/lang/ref/WeakReference;

.field public final mBasicMeasureSolver:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;

.field public final mDependencyGraph:Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;

.field public mHeightMeasuredTooSmall:Z

.field public mHorizontalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

.field public mHorizontalChainsSize:I

.field public mIsRtl:Z

.field public final mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

.field public mMeasurer:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

.field public mOptimizationLevel:I

.field public mPaddingLeft:I

.field public mPaddingTop:I

.field public final mSystem:Landroidx/constraintlayout/core/LinearSystem;

.field public mVerticalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

.field public mVerticalChainsSize:I

.field public mWidthMeasuredTooSmall:Z

.field public pass:I

.field public verticalWrapMax:Ljava/lang/ref/WeakReference;

.field public verticalWrapMin:Ljava/lang/ref/WeakReference;

.field public final widgetsToAdd:Ljava/util/HashSet;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Landroidx/constraintlayout/core/widgets/WidgetContainer;-><init>()V

    .line 2
    new-instance v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mBasicMeasureSolver:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;

    .line 3
    new-instance v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mDependencyGraph:Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMeasurer:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mIsRtl:Z

    .line 6
    new-instance v2, Landroidx/constraintlayout/core/LinearSystem;

    invoke-direct {v2}, Landroidx/constraintlayout/core/LinearSystem;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    .line 7
    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    .line 8
    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    const/4 v2, 0x4

    new-array v3, v2, [Landroidx/constraintlayout/core/widgets/ChainHead;

    .line 9
    iput-object v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    new-array v2, v2, [Landroidx/constraintlayout/core/widgets/ChainHead;

    .line 10
    iput-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    const/16 v2, 0x101

    .line 11
    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    .line 12
    iput-boolean v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mWidthMeasuredTooSmall:Z

    .line 13
    iput-boolean v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHeightMeasuredTooSmall:Z

    .line 14
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalWrapMin:Ljava/lang/ref/WeakReference;

    .line 15
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalWrapMin:Ljava/lang/ref/WeakReference;

    .line 16
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalWrapMax:Ljava/lang/ref/WeakReference;

    .line 17
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalWrapMax:Ljava/lang/ref/WeakReference;

    .line 18
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->widgetsToAdd:Ljava/util/HashSet;

    .line 19
    new-instance v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    invoke-direct {v0}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    .line 39
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/core/widgets/WidgetContainer;-><init>(II)V

    .line 40
    new-instance p1, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;

    invoke-direct {p1, p0}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V

    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mBasicMeasureSolver:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;

    .line 41
    new-instance p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;

    invoke-direct {p1, p0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V

    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mDependencyGraph:Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;

    const/4 p1, 0x0

    .line 42
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMeasurer:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    const/4 p2, 0x0

    .line 43
    iput-boolean p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mIsRtl:Z

    .line 44
    new-instance v0, Landroidx/constraintlayout/core/LinearSystem;

    invoke-direct {v0}, Landroidx/constraintlayout/core/LinearSystem;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    .line 45
    iput p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    .line 46
    iput p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    const/4 v0, 0x4

    new-array v1, v0, [Landroidx/constraintlayout/core/widgets/ChainHead;

    .line 47
    iput-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    new-array v0, v0, [Landroidx/constraintlayout/core/widgets/ChainHead;

    .line 48
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    const/16 v0, 0x101

    .line 49
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    .line 50
    iput-boolean p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mWidthMeasuredTooSmall:Z

    .line 51
    iput-boolean p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHeightMeasuredTooSmall:Z

    .line 52
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalWrapMin:Ljava/lang/ref/WeakReference;

    .line 53
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalWrapMin:Ljava/lang/ref/WeakReference;

    .line 54
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalWrapMax:Ljava/lang/ref/WeakReference;

    .line 55
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalWrapMax:Ljava/lang/ref/WeakReference;

    .line 56
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->widgetsToAdd:Ljava/util/HashSet;

    .line 57
    new-instance p1, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    invoke-direct {p1}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/core/widgets/WidgetContainer;-><init>(IIII)V

    .line 21
    new-instance p1, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;

    invoke-direct {p1, p0}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V

    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mBasicMeasureSolver:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;

    .line 22
    new-instance p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;

    invoke-direct {p1, p0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V

    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mDependencyGraph:Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;

    const/4 p1, 0x0

    .line 23
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMeasurer:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    const/4 p2, 0x0

    .line 24
    iput-boolean p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mIsRtl:Z

    .line 25
    new-instance p3, Landroidx/constraintlayout/core/LinearSystem;

    invoke-direct {p3}, Landroidx/constraintlayout/core/LinearSystem;-><init>()V

    iput-object p3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    .line 26
    iput p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    .line 27
    iput p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    const/4 p3, 0x4

    new-array p4, p3, [Landroidx/constraintlayout/core/widgets/ChainHead;

    .line 28
    iput-object p4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    new-array p3, p3, [Landroidx/constraintlayout/core/widgets/ChainHead;

    .line 29
    iput-object p3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    const/16 p3, 0x101

    .line 30
    iput p3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    .line 31
    iput-boolean p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mWidthMeasuredTooSmall:Z

    .line 32
    iput-boolean p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHeightMeasuredTooSmall:Z

    .line 33
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalWrapMin:Ljava/lang/ref/WeakReference;

    .line 34
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalWrapMin:Ljava/lang/ref/WeakReference;

    .line 35
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalWrapMax:Ljava/lang/ref/WeakReference;

    .line 36
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalWrapMax:Ljava/lang/ref/WeakReference;

    .line 37
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->widgetsToAdd:Ljava/util/HashSet;

    .line 38
    new-instance p1, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    invoke-direct {p1}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 2

    .line 58
    invoke-direct {p0, p2, p3}, Landroidx/constraintlayout/core/widgets/WidgetContainer;-><init>(II)V

    .line 59
    new-instance p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;

    invoke-direct {p2, p0}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V

    iput-object p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mBasicMeasureSolver:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;

    .line 60
    new-instance p2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;

    invoke-direct {p2, p0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V

    iput-object p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mDependencyGraph:Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;

    const/4 p2, 0x0

    .line 61
    iput-object p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMeasurer:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    const/4 p3, 0x0

    .line 62
    iput-boolean p3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mIsRtl:Z

    .line 63
    new-instance v0, Landroidx/constraintlayout/core/LinearSystem;

    invoke-direct {v0}, Landroidx/constraintlayout/core/LinearSystem;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    .line 64
    iput p3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    .line 65
    iput p3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    const/4 v0, 0x4

    new-array v1, v0, [Landroidx/constraintlayout/core/widgets/ChainHead;

    .line 66
    iput-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    new-array v0, v0, [Landroidx/constraintlayout/core/widgets/ChainHead;

    .line 67
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    const/16 v0, 0x101

    .line 68
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    .line 69
    iput-boolean p3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mWidthMeasuredTooSmall:Z

    .line 70
    iput-boolean p3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHeightMeasuredTooSmall:Z

    .line 71
    iput-object p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalWrapMin:Ljava/lang/ref/WeakReference;

    .line 72
    iput-object p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalWrapMin:Ljava/lang/ref/WeakReference;

    .line 73
    iput-object p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalWrapMax:Ljava/lang/ref/WeakReference;

    .line 74
    iput-object p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalWrapMax:Ljava/lang/ref/WeakReference;

    .line 75
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->widgetsToAdd:Ljava/util/HashSet;

    .line 76
    new-instance p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    invoke-direct {p2}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    iput-object p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    .line 77
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    return-void
.end method

.method public static measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;)V
    .locals 8

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    .line 5
    .line 6
    const/16 v1, 0x8

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-eq v0, v1, :cond_14

    .line 10
    .line 11
    instance-of v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 12
    .line 13
    if-nez v0, :cond_14

    .line 14
    .line 15
    instance-of v0, p0, Landroidx/constraintlayout/core/widgets/Barrier;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    goto/16 :goto_9

    .line 20
    .line 21
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 22
    .line 23
    aget-object v1, v0, v2

    .line 24
    .line 25
    iput-object v1, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    aget-object v0, v0, v1

    .line 29
    .line 30
    iput-object v0, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 31
    .line 32
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    iput v0, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalDimension:I

    .line 37
    .line 38
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    iput v0, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    .line 43
    .line 44
    iput-boolean v2, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredNeedsSolverPass:Z

    .line 45
    .line 46
    iput v2, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measureStrategy:I

    .line 47
    .line 48
    iget-object v0, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 49
    .line 50
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 51
    .line 52
    if-ne v0, v3, :cond_2

    .line 53
    .line 54
    move v0, v1

    .line 55
    goto :goto_0

    .line 56
    :cond_2
    move v0, v2

    .line 57
    :goto_0
    iget-object v4, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 58
    .line 59
    if-ne v4, v3, :cond_3

    .line 60
    .line 61
    move v3, v1

    .line 62
    goto :goto_1

    .line 63
    :cond_3
    move v3, v2

    .line 64
    :goto_1
    const/4 v4, 0x0

    .line 65
    if-eqz v0, :cond_4

    .line 66
    .line 67
    iget v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 68
    .line 69
    cmpl-float v5, v5, v4

    .line 70
    .line 71
    if-lez v5, :cond_4

    .line 72
    .line 73
    move v5, v1

    .line 74
    goto :goto_2

    .line 75
    :cond_4
    move v5, v2

    .line 76
    :goto_2
    if-eqz v3, :cond_5

    .line 77
    .line 78
    iget v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 79
    .line 80
    cmpl-float v4, v6, v4

    .line 81
    .line 82
    if-lez v4, :cond_5

    .line 83
    .line 84
    move v4, v1

    .line 85
    goto :goto_3

    .line 86
    :cond_5
    move v4, v2

    .line 87
    :goto_3
    if-eqz v0, :cond_7

    .line 88
    .line 89
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->hasDanglingDimension(I)Z

    .line 90
    .line 91
    .line 92
    move-result v6

    .line 93
    if-eqz v6, :cond_7

    .line 94
    .line 95
    iget v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 96
    .line 97
    if-nez v6, :cond_7

    .line 98
    .line 99
    if-nez v5, :cond_7

    .line 100
    .line 101
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 102
    .line 103
    iput-object v0, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 104
    .line 105
    if-eqz v3, :cond_6

    .line 106
    .line 107
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 108
    .line 109
    if-nez v0, :cond_6

    .line 110
    .line 111
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 112
    .line 113
    iput-object v0, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 114
    .line 115
    :cond_6
    move v0, v2

    .line 116
    :cond_7
    if-eqz v3, :cond_9

    .line 117
    .line 118
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->hasDanglingDimension(I)Z

    .line 119
    .line 120
    .line 121
    move-result v6

    .line 122
    if-eqz v6, :cond_9

    .line 123
    .line 124
    iget v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 125
    .line 126
    if-nez v6, :cond_9

    .line 127
    .line 128
    if-nez v4, :cond_9

    .line 129
    .line 130
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 131
    .line 132
    iput-object v3, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 133
    .line 134
    if-eqz v0, :cond_8

    .line 135
    .line 136
    iget v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 137
    .line 138
    if-nez v3, :cond_8

    .line 139
    .line 140
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 141
    .line 142
    iput-object v3, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 143
    .line 144
    :cond_8
    move v3, v2

    .line 145
    :cond_9
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isResolvedHorizontally()Z

    .line 146
    .line 147
    .line 148
    move-result v6

    .line 149
    if-eqz v6, :cond_a

    .line 150
    .line 151
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 152
    .line 153
    iput-object v0, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 154
    .line 155
    move v0, v2

    .line 156
    :cond_a
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isResolvedVertically()Z

    .line 157
    .line 158
    .line 159
    move-result v6

    .line 160
    if-eqz v6, :cond_b

    .line 161
    .line 162
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 163
    .line 164
    iput-object v3, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 165
    .line 166
    move v3, v2

    .line 167
    :cond_b
    const/4 v6, 0x4

    .line 168
    iget-object v7, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    .line 169
    .line 170
    if-eqz v5, :cond_e

    .line 171
    .line 172
    aget v5, v7, v2

    .line 173
    .line 174
    if-ne v5, v6, :cond_c

    .line 175
    .line 176
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 177
    .line 178
    iput-object v3, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 179
    .line 180
    goto :goto_5

    .line 181
    :cond_c
    if-nez v3, :cond_e

    .line 182
    .line 183
    iget-object v3, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 184
    .line 185
    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 186
    .line 187
    if-ne v3, v5, :cond_d

    .line 188
    .line 189
    iget v3, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    .line 190
    .line 191
    goto :goto_4

    .line 192
    :cond_d
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 193
    .line 194
    iput-object v3, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 195
    .line 196
    move-object v3, p1

    .line 197
    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    .line 198
    .line 199
    invoke-virtual {v3, p0, p2}, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;)V

    .line 200
    .line 201
    .line 202
    iget v3, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    .line 203
    .line 204
    :goto_4
    iput-object v5, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 205
    .line 206
    iget v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 207
    .line 208
    int-to-float v3, v3

    .line 209
    mul-float/2addr v5, v3

    .line 210
    float-to-int v3, v5

    .line 211
    iput v3, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalDimension:I

    .line 212
    .line 213
    :cond_e
    :goto_5
    if-eqz v4, :cond_12

    .line 214
    .line 215
    aget v3, v7, v1

    .line 216
    .line 217
    if-ne v3, v6, :cond_f

    .line 218
    .line 219
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 220
    .line 221
    iput-object v0, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 222
    .line 223
    goto :goto_7

    .line 224
    :cond_f
    if-nez v0, :cond_12

    .line 225
    .line 226
    iget-object v0, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 227
    .line 228
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 229
    .line 230
    if-ne v0, v3, :cond_10

    .line 231
    .line 232
    iget v0, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalDimension:I

    .line 233
    .line 234
    goto :goto_6

    .line 235
    :cond_10
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 236
    .line 237
    iput-object v0, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 238
    .line 239
    move-object v0, p1

    .line 240
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    .line 241
    .line 242
    invoke-virtual {v0, p0, p2}, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;)V

    .line 243
    .line 244
    .line 245
    iget v0, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    .line 246
    .line 247
    :goto_6
    iput-object v3, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 248
    .line 249
    iget v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatioSide:I

    .line 250
    .line 251
    const/4 v4, -0x1

    .line 252
    if-ne v3, v4, :cond_11

    .line 253
    .line 254
    int-to-float v0, v0

    .line 255
    iget v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 256
    .line 257
    div-float/2addr v0, v3

    .line 258
    float-to-int v0, v0

    .line 259
    iput v0, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    .line 260
    .line 261
    goto :goto_7

    .line 262
    :cond_11
    iget v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 263
    .line 264
    int-to-float v0, v0

    .line 265
    mul-float/2addr v3, v0

    .line 266
    float-to-int v0, v3

    .line 267
    iput v0, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    .line 268
    .line 269
    :cond_12
    :goto_7
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    .line 270
    .line 271
    invoke-virtual {p1, p0, p2}, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;)V

    .line 272
    .line 273
    .line 274
    iget p1, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    .line 275
    .line 276
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    .line 277
    .line 278
    .line 279
    iget p1, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    .line 280
    .line 281
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    .line 282
    .line 283
    .line 284
    iget-boolean p1, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredHasBaseline:Z

    .line 285
    .line 286
    iput-boolean p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->hasBaseline:Z

    .line 287
    .line 288
    iget p1, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredBaseline:I

    .line 289
    .line 290
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaselineDistance:I

    .line 291
    .line 292
    if-lez p1, :cond_13

    .line 293
    .line 294
    goto :goto_8

    .line 295
    :cond_13
    move v1, v2

    .line 296
    :goto_8
    iput-boolean v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->hasBaseline:Z

    .line 297
    .line 298
    iput v2, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measureStrategy:I

    .line 299
    .line 300
    return-void

    .line 301
    :cond_14
    :goto_9
    iput v2, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    .line 302
    .line 303
    iput v2, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    .line 304
    .line 305
    return-void
.end method


# virtual methods
.method public final addChain(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p2, :cond_1

    .line 3
    .line 4
    iget p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    .line 5
    .line 6
    add-int/2addr p2, v0

    .line 7
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    .line 8
    .line 9
    array-length v2, v1

    .line 10
    if-lt p2, v2, :cond_0

    .line 11
    .line 12
    array-length p2, v1

    .line 13
    mul-int/lit8 p2, p2, 0x2

    .line 14
    .line 15
    invoke-static {v1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    check-cast p2, [Landroidx/constraintlayout/core/widgets/ChainHead;

    .line 20
    .line 21
    iput-object p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    .line 22
    .line 23
    :cond_0
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    .line 24
    .line 25
    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    .line 26
    .line 27
    new-instance v2, Landroidx/constraintlayout/core/widgets/ChainHead;

    .line 28
    .line 29
    iget-boolean v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mIsRtl:Z

    .line 30
    .line 31
    const/4 v4, 0x0

    .line 32
    invoke-direct {v2, p1, v4, v3}, Landroidx/constraintlayout/core/widgets/ChainHead;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;IZ)V

    .line 33
    .line 34
    .line 35
    aput-object v2, p2, v1

    .line 36
    .line 37
    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    .line 38
    .line 39
    add-int/2addr p1, v0

    .line 40
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    if-ne p2, v0, :cond_3

    .line 44
    .line 45
    iget p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    .line 46
    .line 47
    add-int/2addr p2, v0

    .line 48
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    .line 49
    .line 50
    array-length v2, v1

    .line 51
    if-lt p2, v2, :cond_2

    .line 52
    .line 53
    array-length p2, v1

    .line 54
    mul-int/lit8 p2, p2, 0x2

    .line 55
    .line 56
    invoke-static {v1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    check-cast p2, [Landroidx/constraintlayout/core/widgets/ChainHead;

    .line 61
    .line 62
    iput-object p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    .line 63
    .line 64
    :cond_2
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    .line 65
    .line 66
    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    .line 67
    .line 68
    new-instance v2, Landroidx/constraintlayout/core/widgets/ChainHead;

    .line 69
    .line 70
    iget-boolean v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mIsRtl:Z

    .line 71
    .line 72
    invoke-direct {v2, p1, v0, v3}, Landroidx/constraintlayout/core/widgets/ChainHead;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;IZ)V

    .line 73
    .line 74
    .line 75
    aput-object v2, p2, v1

    .line 76
    .line 77
    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    .line 78
    .line 79
    add-int/2addr p1, v0

    .line 80
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    .line 81
    .line 82
    :cond_3
    :goto_0
    return-void
.end method

.method public final addChildrenToSolver(Landroidx/constraintlayout/core/LinearSystem;)V
    .locals 12

    .line 1
    const/16 v0, 0x40

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->optimizeFor(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->addToSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x0

    .line 17
    move v3, v2

    .line 18
    move v4, v3

    .line 19
    :goto_0
    const/4 v5, 0x1

    .line 20
    if-ge v3, v1, :cond_1

    .line 21
    .line 22
    iget-object v6, p0, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v6

    .line 28
    check-cast v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 29
    .line 30
    iget-object v7, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mIsInBarrier:[Z

    .line 31
    .line 32
    aput-boolean v2, v7, v2

    .line 33
    .line 34
    aput-boolean v2, v7, v5

    .line 35
    .line 36
    instance-of v6, v6, Landroidx/constraintlayout/core/widgets/Barrier;

    .line 37
    .line 38
    if-eqz v6, :cond_0

    .line 39
    .line 40
    move v4, v5

    .line 41
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    if-eqz v4, :cond_8

    .line 45
    .line 46
    move v3, v2

    .line 47
    :goto_1
    if-ge v3, v1, :cond_8

    .line 48
    .line 49
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    check-cast v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 56
    .line 57
    instance-of v6, v4, Landroidx/constraintlayout/core/widgets/Barrier;

    .line 58
    .line 59
    if-eqz v6, :cond_7

    .line 60
    .line 61
    check-cast v4, Landroidx/constraintlayout/core/widgets/Barrier;

    .line 62
    .line 63
    move v6, v2

    .line 64
    :goto_2
    iget v7, v4, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgetsCount:I

    .line 65
    .line 66
    if-ge v6, v7, :cond_7

    .line 67
    .line 68
    iget-object v7, v4, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 69
    .line 70
    aget-object v7, v7, v6

    .line 71
    .line 72
    iget-boolean v8, v4, Landroidx/constraintlayout/core/widgets/Barrier;->mAllowsGoneWidget:Z

    .line 73
    .line 74
    if-nez v8, :cond_2

    .line 75
    .line 76
    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->allowedInBarrier()Z

    .line 77
    .line 78
    .line 79
    move-result v8

    .line 80
    if-nez v8, :cond_2

    .line 81
    .line 82
    goto :goto_4

    .line 83
    :cond_2
    iget v8, v4, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    .line 84
    .line 85
    if-eqz v8, :cond_5

    .line 86
    .line 87
    if-ne v8, v5, :cond_3

    .line 88
    .line 89
    goto :goto_3

    .line 90
    :cond_3
    const/4 v9, 0x2

    .line 91
    if-eq v8, v9, :cond_4

    .line 92
    .line 93
    const/4 v9, 0x3

    .line 94
    if-ne v8, v9, :cond_6

    .line 95
    .line 96
    :cond_4
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mIsInBarrier:[Z

    .line 97
    .line 98
    aput-boolean v5, v7, v5

    .line 99
    .line 100
    goto :goto_4

    .line 101
    :cond_5
    :goto_3
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mIsInBarrier:[Z

    .line 102
    .line 103
    aput-boolean v5, v7, v2

    .line 104
    .line 105
    :cond_6
    :goto_4
    add-int/lit8 v6, v6, 0x1

    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_7
    add-int/lit8 v3, v3, 0x1

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_8
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->widgetsToAdd:Ljava/util/HashSet;

    .line 112
    .line 113
    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    .line 114
    .line 115
    .line 116
    move v4, v2

    .line 117
    :goto_5
    if-ge v4, v1, :cond_d

    .line 118
    .line 119
    iget-object v6, p0, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 120
    .line 121
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v6

    .line 125
    check-cast v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 126
    .line 127
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    .line 129
    .line 130
    instance-of v7, v6, Landroidx/constraintlayout/core/widgets/VirtualLayout;

    .line 131
    .line 132
    if-nez v7, :cond_a

    .line 133
    .line 134
    instance-of v7, v6, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 135
    .line 136
    if-eqz v7, :cond_9

    .line 137
    .line 138
    goto :goto_6

    .line 139
    :cond_9
    move v7, v2

    .line 140
    goto :goto_7

    .line 141
    :cond_a
    :goto_6
    move v7, v5

    .line 142
    :goto_7
    if-eqz v7, :cond_c

    .line 143
    .line 144
    instance-of v7, v6, Landroidx/constraintlayout/core/widgets/VirtualLayout;

    .line 145
    .line 146
    if-eqz v7, :cond_b

    .line 147
    .line 148
    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    goto :goto_8

    .line 152
    :cond_b
    invoke-virtual {v6, p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->addToSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    .line 153
    .line 154
    .line 155
    :cond_c
    :goto_8
    add-int/lit8 v4, v4, 0x1

    .line 156
    .line 157
    goto :goto_5

    .line 158
    :cond_d
    :goto_9
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    .line 159
    .line 160
    .line 161
    move-result v4

    .line 162
    if-lez v4, :cond_13

    .line 163
    .line 164
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    .line 165
    .line 166
    .line 167
    move-result v4

    .line 168
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 169
    .line 170
    .line 171
    move-result-object v6

    .line 172
    :cond_e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 173
    .line 174
    .line 175
    move-result v7

    .line 176
    if-eqz v7, :cond_11

    .line 177
    .line 178
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v7

    .line 182
    check-cast v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 183
    .line 184
    check-cast v7, Landroidx/constraintlayout/core/widgets/VirtualLayout;

    .line 185
    .line 186
    move v8, v2

    .line 187
    :goto_a
    iget v9, v7, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgetsCount:I

    .line 188
    .line 189
    if-ge v8, v9, :cond_10

    .line 190
    .line 191
    iget-object v9, v7, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 192
    .line 193
    aget-object v9, v9, v8

    .line 194
    .line 195
    invoke-virtual {v3, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result v9

    .line 199
    if-eqz v9, :cond_f

    .line 200
    .line 201
    move v8, v5

    .line 202
    goto :goto_b

    .line 203
    :cond_f
    add-int/lit8 v8, v8, 0x1

    .line 204
    .line 205
    goto :goto_a

    .line 206
    :cond_10
    move v8, v2

    .line 207
    :goto_b
    if-eqz v8, :cond_e

    .line 208
    .line 209
    invoke-virtual {v7, p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->addToSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v3, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    :cond_11
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    .line 216
    .line 217
    .line 218
    move-result v6

    .line 219
    if-ne v4, v6, :cond_d

    .line 220
    .line 221
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 222
    .line 223
    .line 224
    move-result-object v4

    .line 225
    :goto_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 226
    .line 227
    .line 228
    move-result v6

    .line 229
    if-eqz v6, :cond_12

    .line 230
    .line 231
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v6

    .line 235
    check-cast v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 236
    .line 237
    invoke-virtual {v6, p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->addToSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    .line 238
    .line 239
    .line 240
    goto :goto_c

    .line 241
    :cond_12
    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    .line 242
    .line 243
    .line 244
    goto :goto_9

    .line 245
    :cond_13
    sget-boolean v3, Landroidx/constraintlayout/core/LinearSystem;->USE_DEPENDENCY_ORDERING:Z

    .line 246
    .line 247
    if-eqz v3, :cond_19

    .line 248
    .line 249
    new-instance v3, Ljava/util/HashSet;

    .line 250
    .line 251
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 252
    .line 253
    .line 254
    move v4, v2

    .line 255
    :goto_d
    if-ge v4, v1, :cond_17

    .line 256
    .line 257
    iget-object v6, p0, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 258
    .line 259
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object v6

    .line 263
    check-cast v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 264
    .line 265
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 266
    .line 267
    .line 268
    instance-of v7, v6, Landroidx/constraintlayout/core/widgets/VirtualLayout;

    .line 269
    .line 270
    if-nez v7, :cond_15

    .line 271
    .line 272
    instance-of v7, v6, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 273
    .line 274
    if-eqz v7, :cond_14

    .line 275
    .line 276
    goto :goto_e

    .line 277
    :cond_14
    move v7, v2

    .line 278
    goto :goto_f

    .line 279
    :cond_15
    :goto_e
    move v7, v5

    .line 280
    :goto_f
    if-nez v7, :cond_16

    .line 281
    .line 282
    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 283
    .line 284
    .line 285
    :cond_16
    add-int/lit8 v4, v4, 0x1

    .line 286
    .line 287
    goto :goto_d

    .line 288
    :cond_17
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 289
    .line 290
    aget-object v1, v1, v2

    .line 291
    .line 292
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 293
    .line 294
    if-ne v1, v4, :cond_18

    .line 295
    .line 296
    move v10, v2

    .line 297
    goto :goto_10

    .line 298
    :cond_18
    move v10, v5

    .line 299
    :goto_10
    const/4 v11, 0x0

    .line 300
    move-object v6, p0

    .line 301
    move-object v7, p0

    .line 302
    move-object v8, p1

    .line 303
    move-object v9, v3

    .line 304
    invoke-virtual/range {v6 .. v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->addChildrenToSolverByDependency(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;Ljava/util/HashSet;IZ)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 308
    .line 309
    .line 310
    move-result-object v1

    .line 311
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 312
    .line 313
    .line 314
    move-result v3

    .line 315
    if-eqz v3, :cond_21

    .line 316
    .line 317
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object v3

    .line 321
    check-cast v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 322
    .line 323
    invoke-static {p0, p1, v3}, Landroidx/constraintlayout/core/widgets/Optimizer;->checkMatchParent(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {v3, p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->addToSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    .line 327
    .line 328
    .line 329
    goto :goto_11

    .line 330
    :cond_19
    move v3, v2

    .line 331
    :goto_12
    if-ge v3, v1, :cond_21

    .line 332
    .line 333
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 334
    .line 335
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    move-result-object v4

    .line 339
    check-cast v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 340
    .line 341
    instance-of v6, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 342
    .line 343
    if-eqz v6, :cond_1d

    .line 344
    .line 345
    iget-object v6, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 346
    .line 347
    aget-object v7, v6, v2

    .line 348
    .line 349
    aget-object v6, v6, v5

    .line 350
    .line 351
    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 352
    .line 353
    if-ne v7, v8, :cond_1a

    .line 354
    .line 355
    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 356
    .line 357
    invoke-virtual {v4, v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 358
    .line 359
    .line 360
    :cond_1a
    if-ne v6, v8, :cond_1b

    .line 361
    .line 362
    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 363
    .line 364
    invoke-virtual {v4, v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 365
    .line 366
    .line 367
    :cond_1b
    invoke-virtual {v4, p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->addToSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    .line 368
    .line 369
    .line 370
    if-ne v7, v8, :cond_1c

    .line 371
    .line 372
    invoke-virtual {v4, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 373
    .line 374
    .line 375
    :cond_1c
    if-ne v6, v8, :cond_20

    .line 376
    .line 377
    invoke-virtual {v4, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 378
    .line 379
    .line 380
    goto :goto_15

    .line 381
    :cond_1d
    invoke-static {p0, p1, v4}, Landroidx/constraintlayout/core/widgets/Optimizer;->checkMatchParent(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    .line 382
    .line 383
    .line 384
    instance-of v6, v4, Landroidx/constraintlayout/core/widgets/VirtualLayout;

    .line 385
    .line 386
    if-nez v6, :cond_1f

    .line 387
    .line 388
    instance-of v6, v4, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 389
    .line 390
    if-eqz v6, :cond_1e

    .line 391
    .line 392
    goto :goto_13

    .line 393
    :cond_1e
    move v6, v2

    .line 394
    goto :goto_14

    .line 395
    :cond_1f
    :goto_13
    move v6, v5

    .line 396
    :goto_14
    if-nez v6, :cond_20

    .line 397
    .line 398
    invoke-virtual {v4, p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->addToSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    .line 399
    .line 400
    .line 401
    :cond_20
    :goto_15
    add-int/lit8 v3, v3, 0x1

    .line 402
    .line 403
    goto :goto_12

    .line 404
    :cond_21
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    .line 405
    .line 406
    const/4 v1, 0x0

    .line 407
    if-lez v0, :cond_22

    .line 408
    .line 409
    invoke-static {p0, p1, v1, v2}, Landroidx/constraintlayout/core/widgets/Chain;->applyChainConstraints(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;Ljava/util/ArrayList;I)V

    .line 410
    .line 411
    .line 412
    :cond_22
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    .line 413
    .line 414
    if-lez v0, :cond_23

    .line 415
    .line 416
    invoke-static {p0, p1, v1, v5}, Landroidx/constraintlayout/core/widgets/Chain;->applyChainConstraints(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;Ljava/util/ArrayList;I)V

    .line 417
    .line 418
    .line 419
    :cond_23
    return-void
.end method

.method public final directMeasureWithOrientation(IZ)Z
    .locals 11

    .line 1
    const/4 v0, 0x1

    .line 2
    and-int/2addr p2, v0

    .line 3
    iget-object p0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mDependencyGraph:Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionBehaviour(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionBehaviour(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getX()I

    .line 17
    .line 18
    .line 19
    move-result v5

    .line 20
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getY()I

    .line 21
    .line 22
    .line 23
    move-result v6

    .line 24
    iget-object v7, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mRuns:Ljava/util/ArrayList;

    .line 25
    .line 26
    if-eqz p2, :cond_4

    .line 27
    .line 28
    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 29
    .line 30
    if-eq v3, v8, :cond_0

    .line 31
    .line 32
    if-ne v4, v8, :cond_4

    .line 33
    .line 34
    :cond_0
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object v8

    .line 38
    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v9

    .line 42
    if-eqz v9, :cond_2

    .line 43
    .line 44
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v9

    .line 48
    check-cast v9, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 49
    .line 50
    iget v10, v9, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->orientation:I

    .line 51
    .line 52
    if-ne v10, p1, :cond_1

    .line 53
    .line 54
    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->supportsWrapComputation()Z

    .line 55
    .line 56
    .line 57
    move-result v9

    .line 58
    if-nez v9, :cond_1

    .line 59
    .line 60
    move p2, v2

    .line 61
    :cond_2
    if-nez p1, :cond_3

    .line 62
    .line 63
    if-eqz p2, :cond_4

    .line 64
    .line 65
    sget-object p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 66
    .line 67
    if-ne v3, p2, :cond_4

    .line 68
    .line 69
    sget-object p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 70
    .line 71
    invoke-virtual {v1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, v1, v2}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->computeWrap(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;I)I

    .line 75
    .line 76
    .line 77
    move-result p2

    .line 78
    invoke-virtual {v1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    .line 79
    .line 80
    .line 81
    iget-object p2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 82
    .line 83
    iget-object p2, p2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 84
    .line 85
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 86
    .line 87
    .line 88
    move-result v8

    .line 89
    invoke-virtual {p2, v8}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_3
    if-eqz p2, :cond_4

    .line 94
    .line 95
    sget-object p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 96
    .line 97
    if-ne v4, p2, :cond_4

    .line 98
    .line 99
    sget-object p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 100
    .line 101
    invoke-virtual {v1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0, v1, v0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->computeWrap(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;I)I

    .line 105
    .line 106
    .line 107
    move-result p2

    .line 108
    invoke-virtual {v1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    .line 109
    .line 110
    .line 111
    iget-object p2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 112
    .line 113
    iget-object p2, p2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 114
    .line 115
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 116
    .line 117
    .line 118
    move-result v8

    .line 119
    invoke-virtual {p2, v8}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 120
    .line 121
    .line 122
    :cond_4
    :goto_0
    if-nez p1, :cond_6

    .line 123
    .line 124
    iget-object p2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 125
    .line 126
    aget-object p2, p2, v2

    .line 127
    .line 128
    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 129
    .line 130
    if-eq p2, v6, :cond_5

    .line 131
    .line 132
    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 133
    .line 134
    if-ne p2, v6, :cond_7

    .line 135
    .line 136
    :cond_5
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 137
    .line 138
    .line 139
    move-result p2

    .line 140
    add-int/2addr p2, v5

    .line 141
    iget-object v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 142
    .line 143
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 144
    .line 145
    invoke-virtual {v6, p2}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 146
    .line 147
    .line 148
    iget-object v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 149
    .line 150
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 151
    .line 152
    sub-int/2addr p2, v5

    .line 153
    invoke-virtual {v6, p2}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 154
    .line 155
    .line 156
    goto :goto_2

    .line 157
    :cond_6
    iget-object p2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 158
    .line 159
    aget-object p2, p2, v0

    .line 160
    .line 161
    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 162
    .line 163
    if-eq p2, v5, :cond_8

    .line 164
    .line 165
    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 166
    .line 167
    if-ne p2, v5, :cond_7

    .line 168
    .line 169
    goto :goto_1

    .line 170
    :cond_7
    move p2, v2

    .line 171
    goto :goto_3

    .line 172
    :cond_8
    :goto_1
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 173
    .line 174
    .line 175
    move-result p2

    .line 176
    add-int/2addr p2, v6

    .line 177
    iget-object v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 178
    .line 179
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 180
    .line 181
    invoke-virtual {v5, p2}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 182
    .line 183
    .line 184
    iget-object v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 185
    .line 186
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 187
    .line 188
    sub-int/2addr p2, v6

    .line 189
    invoke-virtual {v5, p2}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 190
    .line 191
    .line 192
    :goto_2
    move p2, v0

    .line 193
    :goto_3
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->measureWidgets()V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 197
    .line 198
    .line 199
    move-result-object p0

    .line 200
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 201
    .line 202
    .line 203
    move-result v5

    .line 204
    if-eqz v5, :cond_b

    .line 205
    .line 206
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v5

    .line 210
    check-cast v5, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 211
    .line 212
    iget v6, v5, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->orientation:I

    .line 213
    .line 214
    if-eq v6, p1, :cond_9

    .line 215
    .line 216
    goto :goto_4

    .line 217
    :cond_9
    iget-object v6, v5, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 218
    .line 219
    if-ne v6, v1, :cond_a

    .line 220
    .line 221
    iget-boolean v6, v5, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->resolved:Z

    .line 222
    .line 223
    if-nez v6, :cond_a

    .line 224
    .line 225
    goto :goto_4

    .line 226
    :cond_a
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->applyToWidget()V

    .line 227
    .line 228
    .line 229
    goto :goto_4

    .line 230
    :cond_b
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 231
    .line 232
    .line 233
    move-result-object p0

    .line 234
    :cond_c
    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 235
    .line 236
    .line 237
    move-result v5

    .line 238
    if-eqz v5, :cond_11

    .line 239
    .line 240
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v5

    .line 244
    check-cast v5, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 245
    .line 246
    iget v6, v5, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->orientation:I

    .line 247
    .line 248
    if-eq v6, p1, :cond_d

    .line 249
    .line 250
    goto :goto_5

    .line 251
    :cond_d
    if-nez p2, :cond_e

    .line 252
    .line 253
    iget-object v6, v5, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 254
    .line 255
    if-ne v6, v1, :cond_e

    .line 256
    .line 257
    goto :goto_5

    .line 258
    :cond_e
    iget-object v6, v5, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 259
    .line 260
    iget-boolean v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 261
    .line 262
    if-nez v6, :cond_f

    .line 263
    .line 264
    goto :goto_6

    .line 265
    :cond_f
    iget-object v6, v5, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 266
    .line 267
    iget-boolean v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 268
    .line 269
    if-nez v6, :cond_10

    .line 270
    .line 271
    goto :goto_6

    .line 272
    :cond_10
    instance-of v6, v5, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;

    .line 273
    .line 274
    if-nez v6, :cond_c

    .line 275
    .line 276
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 277
    .line 278
    iget-boolean v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 279
    .line 280
    if-nez v5, :cond_c

    .line 281
    .line 282
    :goto_6
    move v0, v2

    .line 283
    :cond_11
    invoke-virtual {v1, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v1, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 287
    .line 288
    .line 289
    return v0
.end method

.method public final layout()V
    .locals 28

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    .line 5
    .line 6
    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    .line 7
    .line 8
    iput-boolean v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mWidthMeasuredTooSmall:Z

    .line 9
    .line 10
    iput-boolean v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHeightMeasuredTooSmall:Z

    .line 11
    .line 12
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    iget-object v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 35
    .line 36
    const/4 v6, 0x1

    .line 37
    aget-object v7, v5, v6

    .line 38
    .line 39
    aget-object v5, v5, v2

    .line 40
    .line 41
    iget v8, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->pass:I

    .line 42
    .line 43
    iget-object v10, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 44
    .line 45
    iget-object v11, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 46
    .line 47
    if-nez v8, :cond_1d

    .line 48
    .line 49
    iget v8, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    .line 50
    .line 51
    invoke-static {v8, v6}, Landroidx/constraintlayout/core/widgets/Optimizer;->enabled(II)Z

    .line 52
    .line 53
    .line 54
    move-result v8

    .line 55
    if-eqz v8, :cond_1d

    .line 56
    .line 57
    iget-object v8, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMeasurer:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    .line 58
    .line 59
    sget-object v12, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->measure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    .line 60
    .line 61
    iget-object v12, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 62
    .line 63
    aget-object v13, v12, v2

    .line 64
    .line 65
    aget-object v12, v12, v6

    .line 66
    .line 67
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resetFinalResolution()V

    .line 68
    .line 69
    .line 70
    iget-object v14, v1, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    .line 73
    .line 74
    .line 75
    move-result v15

    .line 76
    move v9, v2

    .line 77
    :goto_0
    if-ge v9, v15, :cond_0

    .line 78
    .line 79
    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v16

    .line 83
    check-cast v16, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 84
    .line 85
    invoke-virtual/range {v16 .. v16}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resetFinalResolution()V

    .line 86
    .line 87
    .line 88
    add-int/lit8 v9, v9, 0x1

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_0
    iget-boolean v9, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mIsRtl:Z

    .line 92
    .line 93
    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 94
    .line 95
    if-ne v13, v6, :cond_1

    .line 96
    .line 97
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 98
    .line 99
    .line 100
    move-result v6

    .line 101
    invoke-virtual {v1, v2, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFinalHorizontal(II)V

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_1
    invoke-virtual {v11, v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->setFinalValue(I)V

    .line 106
    .line 107
    .line 108
    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    .line 109
    .line 110
    :goto_1
    move v6, v2

    .line 111
    move v13, v6

    .line 112
    move/from16 v17, v13

    .line 113
    .line 114
    :goto_2
    const/high16 v18, 0x3f000000    # 0.5f

    .line 115
    .line 116
    if-ge v13, v15, :cond_7

    .line 117
    .line 118
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v19

    .line 122
    move-object/from16 v2, v19

    .line 123
    .line 124
    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 125
    .line 126
    move-object/from16 v19, v11

    .line 127
    .line 128
    instance-of v11, v2, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 129
    .line 130
    if-eqz v11, :cond_5

    .line 131
    .line 132
    check-cast v2, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 133
    .line 134
    iget v11, v2, Landroidx/constraintlayout/core/widgets/Guideline;->mOrientation:I

    .line 135
    .line 136
    move/from16 v21, v4

    .line 137
    .line 138
    const/4 v4, 0x1

    .line 139
    if-ne v11, v4, :cond_6

    .line 140
    .line 141
    iget v4, v2, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeBegin:I

    .line 142
    .line 143
    const/4 v6, -0x1

    .line 144
    if-eq v4, v6, :cond_2

    .line 145
    .line 146
    invoke-virtual {v2, v4}, Landroidx/constraintlayout/core/widgets/Guideline;->setFinalValue(I)V

    .line 147
    .line 148
    .line 149
    goto :goto_3

    .line 150
    :cond_2
    iget v4, v2, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeEnd:I

    .line 151
    .line 152
    if-eq v4, v6, :cond_3

    .line 153
    .line 154
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isResolvedHorizontally()Z

    .line 155
    .line 156
    .line 157
    move-result v4

    .line 158
    if-eqz v4, :cond_3

    .line 159
    .line 160
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 161
    .line 162
    .line 163
    move-result v4

    .line 164
    iget v6, v2, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeEnd:I

    .line 165
    .line 166
    sub-int/2addr v4, v6

    .line 167
    invoke-virtual {v2, v4}, Landroidx/constraintlayout/core/widgets/Guideline;->setFinalValue(I)V

    .line 168
    .line 169
    .line 170
    goto :goto_3

    .line 171
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isResolvedHorizontally()Z

    .line 172
    .line 173
    .line 174
    move-result v4

    .line 175
    if-eqz v4, :cond_4

    .line 176
    .line 177
    iget v4, v2, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativePercent:F

    .line 178
    .line 179
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 180
    .line 181
    .line 182
    move-result v6

    .line 183
    int-to-float v6, v6

    .line 184
    mul-float/2addr v4, v6

    .line 185
    add-float v4, v4, v18

    .line 186
    .line 187
    float-to-int v4, v4

    .line 188
    invoke-virtual {v2, v4}, Landroidx/constraintlayout/core/widgets/Guideline;->setFinalValue(I)V

    .line 189
    .line 190
    .line 191
    :cond_4
    :goto_3
    const/4 v6, 0x1

    .line 192
    goto :goto_4

    .line 193
    :cond_5
    move/from16 v21, v4

    .line 194
    .line 195
    instance-of v4, v2, Landroidx/constraintlayout/core/widgets/Barrier;

    .line 196
    .line 197
    if-eqz v4, :cond_6

    .line 198
    .line 199
    check-cast v2, Landroidx/constraintlayout/core/widgets/Barrier;

    .line 200
    .line 201
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/Barrier;->getOrientation()I

    .line 202
    .line 203
    .line 204
    move-result v2

    .line 205
    if-nez v2, :cond_6

    .line 206
    .line 207
    const/16 v17, 0x1

    .line 208
    .line 209
    :cond_6
    :goto_4
    add-int/lit8 v13, v13, 0x1

    .line 210
    .line 211
    move-object/from16 v11, v19

    .line 212
    .line 213
    move/from16 v4, v21

    .line 214
    .line 215
    const/4 v2, 0x0

    .line 216
    goto :goto_2

    .line 217
    :cond_7
    move/from16 v21, v4

    .line 218
    .line 219
    move-object/from16 v19, v11

    .line 220
    .line 221
    if-eqz v6, :cond_9

    .line 222
    .line 223
    const/4 v2, 0x0

    .line 224
    :goto_5
    if-ge v2, v15, :cond_9

    .line 225
    .line 226
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v4

    .line 230
    check-cast v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 231
    .line 232
    instance-of v6, v4, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 233
    .line 234
    if-eqz v6, :cond_8

    .line 235
    .line 236
    check-cast v4, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 237
    .line 238
    iget v6, v4, Landroidx/constraintlayout/core/widgets/Guideline;->mOrientation:I

    .line 239
    .line 240
    const/4 v11, 0x1

    .line 241
    if-ne v6, v11, :cond_8

    .line 242
    .line 243
    const/4 v6, 0x0

    .line 244
    invoke-static {v6, v4, v8, v9}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->horizontalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Z)V

    .line 245
    .line 246
    .line 247
    goto :goto_6

    .line 248
    :cond_8
    const/4 v6, 0x0

    .line 249
    :goto_6
    add-int/lit8 v2, v2, 0x1

    .line 250
    .line 251
    goto :goto_5

    .line 252
    :cond_9
    const/4 v6, 0x0

    .line 253
    invoke-static {v6, v1, v8, v9}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->horizontalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Z)V

    .line 254
    .line 255
    .line 256
    if-eqz v17, :cond_b

    .line 257
    .line 258
    const/4 v2, 0x0

    .line 259
    :goto_7
    if-ge v2, v15, :cond_b

    .line 260
    .line 261
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v4

    .line 265
    check-cast v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 266
    .line 267
    instance-of v6, v4, Landroidx/constraintlayout/core/widgets/Barrier;

    .line 268
    .line 269
    if-eqz v6, :cond_a

    .line 270
    .line 271
    check-cast v4, Landroidx/constraintlayout/core/widgets/Barrier;

    .line 272
    .line 273
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/Barrier;->getOrientation()I

    .line 274
    .line 275
    .line 276
    move-result v6

    .line 277
    if-nez v6, :cond_a

    .line 278
    .line 279
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/Barrier;->allSolved()Z

    .line 280
    .line 281
    .line 282
    move-result v6

    .line 283
    if-eqz v6, :cond_a

    .line 284
    .line 285
    const/4 v6, 0x1

    .line 286
    invoke-static {v6, v4, v8, v9}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->horizontalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Z)V

    .line 287
    .line 288
    .line 289
    :cond_a
    add-int/lit8 v2, v2, 0x1

    .line 290
    .line 291
    goto :goto_7

    .line 292
    :cond_b
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 293
    .line 294
    if-ne v12, v2, :cond_c

    .line 295
    .line 296
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 297
    .line 298
    .line 299
    move-result v2

    .line 300
    const/4 v4, 0x0

    .line 301
    invoke-virtual {v1, v4, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFinalVertical(II)V

    .line 302
    .line 303
    .line 304
    goto :goto_8

    .line 305
    :cond_c
    const/4 v4, 0x0

    .line 306
    invoke-virtual {v10, v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->setFinalValue(I)V

    .line 307
    .line 308
    .line 309
    iput v4, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    .line 310
    .line 311
    :goto_8
    const/4 v2, 0x0

    .line 312
    const/4 v4, 0x0

    .line 313
    const/4 v6, 0x0

    .line 314
    :goto_9
    if-ge v4, v15, :cond_12

    .line 315
    .line 316
    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    move-result-object v11

    .line 320
    check-cast v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 321
    .line 322
    instance-of v12, v11, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 323
    .line 324
    if-eqz v12, :cond_10

    .line 325
    .line 326
    check-cast v11, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 327
    .line 328
    iget v12, v11, Landroidx/constraintlayout/core/widgets/Guideline;->mOrientation:I

    .line 329
    .line 330
    if-nez v12, :cond_11

    .line 331
    .line 332
    iget v2, v11, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeBegin:I

    .line 333
    .line 334
    const/4 v12, -0x1

    .line 335
    if-eq v2, v12, :cond_d

    .line 336
    .line 337
    invoke-virtual {v11, v2}, Landroidx/constraintlayout/core/widgets/Guideline;->setFinalValue(I)V

    .line 338
    .line 339
    .line 340
    goto :goto_a

    .line 341
    :cond_d
    iget v2, v11, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeEnd:I

    .line 342
    .line 343
    if-eq v2, v12, :cond_e

    .line 344
    .line 345
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isResolvedVertically()Z

    .line 346
    .line 347
    .line 348
    move-result v2

    .line 349
    if-eqz v2, :cond_e

    .line 350
    .line 351
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 352
    .line 353
    .line 354
    move-result v2

    .line 355
    iget v12, v11, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeEnd:I

    .line 356
    .line 357
    sub-int/2addr v2, v12

    .line 358
    invoke-virtual {v11, v2}, Landroidx/constraintlayout/core/widgets/Guideline;->setFinalValue(I)V

    .line 359
    .line 360
    .line 361
    goto :goto_a

    .line 362
    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isResolvedVertically()Z

    .line 363
    .line 364
    .line 365
    move-result v2

    .line 366
    if-eqz v2, :cond_f

    .line 367
    .line 368
    iget v2, v11, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativePercent:F

    .line 369
    .line 370
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 371
    .line 372
    .line 373
    move-result v12

    .line 374
    int-to-float v12, v12

    .line 375
    mul-float/2addr v2, v12

    .line 376
    add-float v2, v2, v18

    .line 377
    .line 378
    float-to-int v2, v2

    .line 379
    invoke-virtual {v11, v2}, Landroidx/constraintlayout/core/widgets/Guideline;->setFinalValue(I)V

    .line 380
    .line 381
    .line 382
    :cond_f
    :goto_a
    const/4 v2, 0x1

    .line 383
    goto :goto_b

    .line 384
    :cond_10
    instance-of v12, v11, Landroidx/constraintlayout/core/widgets/Barrier;

    .line 385
    .line 386
    if-eqz v12, :cond_11

    .line 387
    .line 388
    check-cast v11, Landroidx/constraintlayout/core/widgets/Barrier;

    .line 389
    .line 390
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/Barrier;->getOrientation()I

    .line 391
    .line 392
    .line 393
    move-result v11

    .line 394
    const/4 v12, 0x1

    .line 395
    if-ne v11, v12, :cond_11

    .line 396
    .line 397
    const/4 v6, 0x1

    .line 398
    :cond_11
    :goto_b
    add-int/lit8 v4, v4, 0x1

    .line 399
    .line 400
    goto :goto_9

    .line 401
    :cond_12
    if-eqz v2, :cond_14

    .line 402
    .line 403
    const/4 v2, 0x0

    .line 404
    :goto_c
    if-ge v2, v15, :cond_14

    .line 405
    .line 406
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 407
    .line 408
    .line 409
    move-result-object v4

    .line 410
    check-cast v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 411
    .line 412
    instance-of v11, v4, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 413
    .line 414
    if-eqz v11, :cond_13

    .line 415
    .line 416
    check-cast v4, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 417
    .line 418
    iget v11, v4, Landroidx/constraintlayout/core/widgets/Guideline;->mOrientation:I

    .line 419
    .line 420
    if-nez v11, :cond_13

    .line 421
    .line 422
    const/4 v11, 0x1

    .line 423
    invoke-static {v11, v4, v8}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->verticalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)V

    .line 424
    .line 425
    .line 426
    :cond_13
    add-int/lit8 v2, v2, 0x1

    .line 427
    .line 428
    goto :goto_c

    .line 429
    :cond_14
    const/4 v2, 0x0

    .line 430
    invoke-static {v2, v1, v8}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->verticalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)V

    .line 431
    .line 432
    .line 433
    if-eqz v6, :cond_16

    .line 434
    .line 435
    const/4 v2, 0x0

    .line 436
    :goto_d
    if-ge v2, v15, :cond_16

    .line 437
    .line 438
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 439
    .line 440
    .line 441
    move-result-object v4

    .line 442
    check-cast v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 443
    .line 444
    instance-of v6, v4, Landroidx/constraintlayout/core/widgets/Barrier;

    .line 445
    .line 446
    if-eqz v6, :cond_15

    .line 447
    .line 448
    check-cast v4, Landroidx/constraintlayout/core/widgets/Barrier;

    .line 449
    .line 450
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/Barrier;->getOrientation()I

    .line 451
    .line 452
    .line 453
    move-result v6

    .line 454
    const/4 v11, 0x1

    .line 455
    if-ne v6, v11, :cond_15

    .line 456
    .line 457
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/Barrier;->allSolved()Z

    .line 458
    .line 459
    .line 460
    move-result v6

    .line 461
    if-eqz v6, :cond_15

    .line 462
    .line 463
    invoke-static {v11, v4, v8}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->verticalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)V

    .line 464
    .line 465
    .line 466
    :cond_15
    add-int/lit8 v2, v2, 0x1

    .line 467
    .line 468
    goto :goto_d

    .line 469
    :cond_16
    const/4 v2, 0x0

    .line 470
    :goto_e
    if-ge v2, v15, :cond_1a

    .line 471
    .line 472
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 473
    .line 474
    .line 475
    move-result-object v4

    .line 476
    check-cast v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 477
    .line 478
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isMeasureRequested()Z

    .line 479
    .line 480
    .line 481
    move-result v6

    .line 482
    if-eqz v6, :cond_19

    .line 483
    .line 484
    invoke-static {v4}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->canMeasure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)Z

    .line 485
    .line 486
    .line 487
    move-result v6

    .line 488
    if-eqz v6, :cond_19

    .line 489
    .line 490
    sget-object v6, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->measure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    .line 491
    .line 492
    invoke-static {v4, v8, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;)V

    .line 493
    .line 494
    .line 495
    instance-of v6, v4, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 496
    .line 497
    if-eqz v6, :cond_18

    .line 498
    .line 499
    move-object v6, v4

    .line 500
    check-cast v6, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 501
    .line 502
    iget v6, v6, Landroidx/constraintlayout/core/widgets/Guideline;->mOrientation:I

    .line 503
    .line 504
    if-nez v6, :cond_17

    .line 505
    .line 506
    const/4 v6, 0x0

    .line 507
    invoke-static {v6, v4, v8}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->verticalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)V

    .line 508
    .line 509
    .line 510
    goto :goto_f

    .line 511
    :cond_17
    const/4 v6, 0x0

    .line 512
    invoke-static {v6, v4, v8, v9}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->horizontalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Z)V

    .line 513
    .line 514
    .line 515
    goto :goto_f

    .line 516
    :cond_18
    const/4 v6, 0x0

    .line 517
    invoke-static {v6, v4, v8, v9}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->horizontalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Z)V

    .line 518
    .line 519
    .line 520
    invoke-static {v6, v4, v8}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->verticalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)V

    .line 521
    .line 522
    .line 523
    :cond_19
    :goto_f
    add-int/lit8 v2, v2, 0x1

    .line 524
    .line 525
    goto :goto_e

    .line 526
    :cond_1a
    const/4 v2, 0x0

    .line 527
    :goto_10
    if-ge v2, v3, :cond_1e

    .line 528
    .line 529
    iget-object v4, v1, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 530
    .line 531
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 532
    .line 533
    .line 534
    move-result-object v4

    .line 535
    check-cast v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 536
    .line 537
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isMeasureRequested()Z

    .line 538
    .line 539
    .line 540
    move-result v6

    .line 541
    if-eqz v6, :cond_1c

    .line 542
    .line 543
    instance-of v6, v4, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 544
    .line 545
    if-nez v6, :cond_1c

    .line 546
    .line 547
    instance-of v6, v4, Landroidx/constraintlayout/core/widgets/Barrier;

    .line 548
    .line 549
    if-nez v6, :cond_1c

    .line 550
    .line 551
    instance-of v6, v4, Landroidx/constraintlayout/core/widgets/VirtualLayout;

    .line 552
    .line 553
    if-nez v6, :cond_1c

    .line 554
    .line 555
    iget-boolean v6, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mInVirtualLayout:Z

    .line 556
    .line 557
    if-nez v6, :cond_1c

    .line 558
    .line 559
    const/4 v6, 0x0

    .line 560
    invoke-virtual {v4, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionBehaviour(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 561
    .line 562
    .line 563
    move-result-object v8

    .line 564
    const/4 v6, 0x1

    .line 565
    invoke-virtual {v4, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionBehaviour(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 566
    .line 567
    .line 568
    move-result-object v9

    .line 569
    sget-object v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 570
    .line 571
    if-ne v8, v11, :cond_1b

    .line 572
    .line 573
    iget v8, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 574
    .line 575
    if-eq v8, v6, :cond_1b

    .line 576
    .line 577
    if-ne v9, v11, :cond_1b

    .line 578
    .line 579
    iget v8, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 580
    .line 581
    if-eq v8, v6, :cond_1b

    .line 582
    .line 583
    const/4 v6, 0x1

    .line 584
    goto :goto_11

    .line 585
    :cond_1b
    const/4 v6, 0x0

    .line 586
    :goto_11
    if-nez v6, :cond_1c

    .line 587
    .line 588
    new-instance v6, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    .line 589
    .line 590
    invoke-direct {v6}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    .line 591
    .line 592
    .line 593
    iget-object v8, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMeasurer:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    .line 594
    .line 595
    invoke-static {v4, v8, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;)V

    .line 596
    .line 597
    .line 598
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    .line 599
    .line 600
    goto :goto_10

    .line 601
    :cond_1d
    move/from16 v21, v4

    .line 602
    .line 603
    move-object/from16 v19, v11

    .line 604
    .line 605
    :cond_1e
    const/4 v2, 0x2

    .line 606
    iget-object v4, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    .line 607
    .line 608
    if-le v3, v2, :cond_59

    .line 609
    .line 610
    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 611
    .line 612
    if-eq v5, v8, :cond_1f

    .line 613
    .line 614
    if-ne v7, v8, :cond_59

    .line 615
    .line 616
    :cond_1f
    iget v8, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    .line 617
    .line 618
    const/16 v9, 0x400

    .line 619
    .line 620
    invoke-static {v8, v9}, Landroidx/constraintlayout/core/widgets/Optimizer;->enabled(II)Z

    .line 621
    .line 622
    .line 623
    move-result v8

    .line 624
    if-eqz v8, :cond_59

    .line 625
    .line 626
    iget-object v8, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMeasurer:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    .line 627
    .line 628
    iget-object v9, v1, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 629
    .line 630
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 631
    .line 632
    .line 633
    move-result v11

    .line 634
    const/4 v12, 0x0

    .line 635
    :goto_12
    if-ge v12, v11, :cond_22

    .line 636
    .line 637
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 638
    .line 639
    .line 640
    move-result-object v13

    .line 641
    check-cast v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 642
    .line 643
    iget-object v14, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 644
    .line 645
    const/4 v15, 0x0

    .line 646
    aget-object v2, v14, v15

    .line 647
    .line 648
    const/16 v16, 0x1

    .line 649
    .line 650
    aget-object v14, v14, v16

    .line 651
    .line 652
    iget-object v6, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 653
    .line 654
    move-object/from16 v22, v10

    .line 655
    .line 656
    aget-object v10, v6, v15

    .line 657
    .line 658
    aget-object v6, v6, v16

    .line 659
    .line 660
    invoke-static {v2, v14, v10, v6}, Landroidx/constraintlayout/core/widgets/analyzer/Grouping;->validInGroup(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)Z

    .line 661
    .line 662
    .line 663
    move-result v2

    .line 664
    if-nez v2, :cond_20

    .line 665
    .line 666
    goto :goto_13

    .line 667
    :cond_20
    instance-of v2, v13, Landroidx/constraintlayout/core/widgets/Flow;

    .line 668
    .line 669
    if-eqz v2, :cond_21

    .line 670
    .line 671
    :goto_13
    move/from16 v25, v0

    .line 672
    .line 673
    move/from16 v24, v3

    .line 674
    .line 675
    move-object v6, v4

    .line 676
    move-object/from16 v26, v5

    .line 677
    .line 678
    move-object/from16 v23, v7

    .line 679
    .line 680
    goto/16 :goto_2e

    .line 681
    .line 682
    :cond_21
    add-int/lit8 v12, v12, 0x1

    .line 683
    .line 684
    move-object/from16 v10, v22

    .line 685
    .line 686
    const/4 v2, 0x2

    .line 687
    goto :goto_12

    .line 688
    :cond_22
    move-object/from16 v22, v10

    .line 689
    .line 690
    const/4 v2, 0x0

    .line 691
    const/4 v6, 0x0

    .line 692
    const/4 v10, 0x0

    .line 693
    const/4 v12, 0x0

    .line 694
    const/4 v13, 0x0

    .line 695
    const/4 v14, 0x0

    .line 696
    const/4 v15, 0x0

    .line 697
    :goto_14
    if-ge v15, v11, :cond_33

    .line 698
    .line 699
    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 700
    .line 701
    .line 702
    move-result-object v23

    .line 703
    move/from16 v24, v3

    .line 704
    .line 705
    move-object/from16 v3, v23

    .line 706
    .line 707
    check-cast v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 708
    .line 709
    move-object/from16 v23, v7

    .line 710
    .line 711
    iget-object v7, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 712
    .line 713
    move/from16 v25, v0

    .line 714
    .line 715
    const/16 v20, 0x0

    .line 716
    .line 717
    aget-object v0, v7, v20

    .line 718
    .line 719
    const/16 v16, 0x1

    .line 720
    .line 721
    aget-object v7, v7, v16

    .line 722
    .line 723
    move-object/from16 v26, v5

    .line 724
    .line 725
    iget-object v5, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 726
    .line 727
    move-object/from16 v27, v4

    .line 728
    .line 729
    aget-object v4, v5, v20

    .line 730
    .line 731
    aget-object v5, v5, v16

    .line 732
    .line 733
    invoke-static {v0, v7, v4, v5}, Landroidx/constraintlayout/core/widgets/analyzer/Grouping;->validInGroup(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)Z

    .line 734
    .line 735
    .line 736
    move-result v0

    .line 737
    if-nez v0, :cond_23

    .line 738
    .line 739
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    .line 740
    .line 741
    invoke-static {v3, v8, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;)V

    .line 742
    .line 743
    .line 744
    :cond_23
    instance-of v0, v3, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 745
    .line 746
    if-eqz v0, :cond_27

    .line 747
    .line 748
    move-object v4, v3

    .line 749
    check-cast v4, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 750
    .line 751
    iget v5, v4, Landroidx/constraintlayout/core/widgets/Guideline;->mOrientation:I

    .line 752
    .line 753
    if-nez v5, :cond_25

    .line 754
    .line 755
    if-nez v10, :cond_24

    .line 756
    .line 757
    new-instance v5, Ljava/util/ArrayList;

    .line 758
    .line 759
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 760
    .line 761
    .line 762
    move-object v10, v5

    .line 763
    :cond_24
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 764
    .line 765
    .line 766
    :cond_25
    iget v5, v4, Landroidx/constraintlayout/core/widgets/Guideline;->mOrientation:I

    .line 767
    .line 768
    const/4 v7, 0x1

    .line 769
    if-ne v5, v7, :cond_27

    .line 770
    .line 771
    if-nez v2, :cond_26

    .line 772
    .line 773
    new-instance v2, Ljava/util/ArrayList;

    .line 774
    .line 775
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 776
    .line 777
    .line 778
    :cond_26
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 779
    .line 780
    .line 781
    :cond_27
    instance-of v4, v3, Landroidx/constraintlayout/core/widgets/HelperWidget;

    .line 782
    .line 783
    if-eqz v4, :cond_2e

    .line 784
    .line 785
    instance-of v4, v3, Landroidx/constraintlayout/core/widgets/Barrier;

    .line 786
    .line 787
    if-eqz v4, :cond_2b

    .line 788
    .line 789
    move-object v4, v3

    .line 790
    check-cast v4, Landroidx/constraintlayout/core/widgets/Barrier;

    .line 791
    .line 792
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/Barrier;->getOrientation()I

    .line 793
    .line 794
    .line 795
    move-result v5

    .line 796
    if-nez v5, :cond_29

    .line 797
    .line 798
    if-nez v6, :cond_28

    .line 799
    .line 800
    new-instance v5, Ljava/util/ArrayList;

    .line 801
    .line 802
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 803
    .line 804
    .line 805
    move-object v6, v5

    .line 806
    :cond_28
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 807
    .line 808
    .line 809
    :cond_29
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/Barrier;->getOrientation()I

    .line 810
    .line 811
    .line 812
    move-result v5

    .line 813
    const/4 v7, 0x1

    .line 814
    if-ne v5, v7, :cond_2e

    .line 815
    .line 816
    if-nez v12, :cond_2a

    .line 817
    .line 818
    new-instance v12, Ljava/util/ArrayList;

    .line 819
    .line 820
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 821
    .line 822
    .line 823
    :cond_2a
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 824
    .line 825
    .line 826
    goto :goto_15

    .line 827
    :cond_2b
    move-object v4, v3

    .line 828
    check-cast v4, Landroidx/constraintlayout/core/widgets/HelperWidget;

    .line 829
    .line 830
    if-nez v6, :cond_2c

    .line 831
    .line 832
    new-instance v6, Ljava/util/ArrayList;

    .line 833
    .line 834
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 835
    .line 836
    .line 837
    :cond_2c
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 838
    .line 839
    .line 840
    if-nez v12, :cond_2d

    .line 841
    .line 842
    new-instance v12, Ljava/util/ArrayList;

    .line 843
    .line 844
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 845
    .line 846
    .line 847
    :cond_2d
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 848
    .line 849
    .line 850
    :cond_2e
    :goto_15
    iget-object v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 851
    .line 852
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 853
    .line 854
    if-nez v4, :cond_30

    .line 855
    .line 856
    iget-object v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 857
    .line 858
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 859
    .line 860
    if-nez v4, :cond_30

    .line 861
    .line 862
    if-nez v0, :cond_30

    .line 863
    .line 864
    instance-of v4, v3, Landroidx/constraintlayout/core/widgets/Barrier;

    .line 865
    .line 866
    if-nez v4, :cond_30

    .line 867
    .line 868
    if-nez v13, :cond_2f

    .line 869
    .line 870
    new-instance v13, Ljava/util/ArrayList;

    .line 871
    .line 872
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 873
    .line 874
    .line 875
    :cond_2f
    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 876
    .line 877
    .line 878
    :cond_30
    iget-object v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 879
    .line 880
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 881
    .line 882
    if-nez v4, :cond_32

    .line 883
    .line 884
    iget-object v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 885
    .line 886
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 887
    .line 888
    if-nez v4, :cond_32

    .line 889
    .line 890
    iget-object v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 891
    .line 892
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 893
    .line 894
    if-nez v4, :cond_32

    .line 895
    .line 896
    if-nez v0, :cond_32

    .line 897
    .line 898
    instance-of v0, v3, Landroidx/constraintlayout/core/widgets/Barrier;

    .line 899
    .line 900
    if-nez v0, :cond_32

    .line 901
    .line 902
    if-nez v14, :cond_31

    .line 903
    .line 904
    new-instance v14, Ljava/util/ArrayList;

    .line 905
    .line 906
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 907
    .line 908
    .line 909
    :cond_31
    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 910
    .line 911
    .line 912
    :cond_32
    add-int/lit8 v15, v15, 0x1

    .line 913
    .line 914
    move-object/from16 v7, v23

    .line 915
    .line 916
    move/from16 v3, v24

    .line 917
    .line 918
    move/from16 v0, v25

    .line 919
    .line 920
    move-object/from16 v5, v26

    .line 921
    .line 922
    move-object/from16 v4, v27

    .line 923
    .line 924
    goto/16 :goto_14

    .line 925
    .line 926
    :cond_33
    move/from16 v25, v0

    .line 927
    .line 928
    move/from16 v24, v3

    .line 929
    .line 930
    move-object/from16 v27, v4

    .line 931
    .line 932
    move-object/from16 v26, v5

    .line 933
    .line 934
    move-object/from16 v23, v7

    .line 935
    .line 936
    new-instance v0, Ljava/util/ArrayList;

    .line 937
    .line 938
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 939
    .line 940
    .line 941
    if-eqz v2, :cond_34

    .line 942
    .line 943
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 944
    .line 945
    .line 946
    move-result-object v2

    .line 947
    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 948
    .line 949
    .line 950
    move-result v3

    .line 951
    if-eqz v3, :cond_34

    .line 952
    .line 953
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 954
    .line 955
    .line 956
    move-result-object v3

    .line 957
    check-cast v3, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 958
    .line 959
    const/4 v4, 0x0

    .line 960
    const/4 v5, 0x0

    .line 961
    invoke-static {v3, v5, v0, v4}, Landroidx/constraintlayout/core/widgets/analyzer/Grouping;->findDependents(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    .line 962
    .line 963
    .line 964
    goto :goto_16

    .line 965
    :cond_34
    const/4 v4, 0x0

    .line 966
    const/4 v5, 0x0

    .line 967
    if-eqz v6, :cond_35

    .line 968
    .line 969
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 970
    .line 971
    .line 972
    move-result-object v2

    .line 973
    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 974
    .line 975
    .line 976
    move-result v3

    .line 977
    if-eqz v3, :cond_35

    .line 978
    .line 979
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 980
    .line 981
    .line 982
    move-result-object v3

    .line 983
    check-cast v3, Landroidx/constraintlayout/core/widgets/HelperWidget;

    .line 984
    .line 985
    invoke-static {v3, v5, v0, v4}, Landroidx/constraintlayout/core/widgets/analyzer/Grouping;->findDependents(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    .line 986
    .line 987
    .line 988
    move-result-object v6

    .line 989
    invoke-virtual {v3, v5, v6, v0}, Landroidx/constraintlayout/core/widgets/HelperWidget;->addDependents(ILandroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;Ljava/util/ArrayList;)V

    .line 990
    .line 991
    .line 992
    invoke-virtual {v6, v0}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->cleanup(Ljava/util/ArrayList;)V

    .line 993
    .line 994
    .line 995
    const/4 v4, 0x0

    .line 996
    const/4 v5, 0x0

    .line 997
    goto :goto_17

    .line 998
    :cond_35
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 999
    .line 1000
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1001
    .line 1002
    .line 1003
    move-result-object v2

    .line 1004
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mDependents:Ljava/util/HashSet;

    .line 1005
    .line 1006
    if-eqz v2, :cond_36

    .line 1007
    .line 1008
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 1009
    .line 1010
    .line 1011
    move-result-object v2

    .line 1012
    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1013
    .line 1014
    .line 1015
    move-result v3

    .line 1016
    if-eqz v3, :cond_36

    .line 1017
    .line 1018
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1019
    .line 1020
    .line 1021
    move-result-object v3

    .line 1022
    check-cast v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1023
    .line 1024
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1025
    .line 1026
    const/4 v4, 0x0

    .line 1027
    const/4 v5, 0x0

    .line 1028
    invoke-static {v3, v5, v0, v4}, Landroidx/constraintlayout/core/widgets/analyzer/Grouping;->findDependents(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    .line 1029
    .line 1030
    .line 1031
    goto :goto_18

    .line 1032
    :cond_36
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 1033
    .line 1034
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1035
    .line 1036
    .line 1037
    move-result-object v2

    .line 1038
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mDependents:Ljava/util/HashSet;

    .line 1039
    .line 1040
    if-eqz v2, :cond_37

    .line 1041
    .line 1042
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 1043
    .line 1044
    .line 1045
    move-result-object v2

    .line 1046
    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1047
    .line 1048
    .line 1049
    move-result v3

    .line 1050
    if-eqz v3, :cond_37

    .line 1051
    .line 1052
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1053
    .line 1054
    .line 1055
    move-result-object v3

    .line 1056
    check-cast v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1057
    .line 1058
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1059
    .line 1060
    const/4 v4, 0x0

    .line 1061
    const/4 v5, 0x0

    .line 1062
    invoke-static {v3, v5, v0, v4}, Landroidx/constraintlayout/core/widgets/analyzer/Grouping;->findDependents(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    .line 1063
    .line 1064
    .line 1065
    goto :goto_19

    .line 1066
    :cond_37
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 1067
    .line 1068
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1069
    .line 1070
    .line 1071
    move-result-object v2

    .line 1072
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mDependents:Ljava/util/HashSet;

    .line 1073
    .line 1074
    if-eqz v2, :cond_38

    .line 1075
    .line 1076
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 1077
    .line 1078
    .line 1079
    move-result-object v2

    .line 1080
    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1081
    .line 1082
    .line 1083
    move-result v3

    .line 1084
    if-eqz v3, :cond_38

    .line 1085
    .line 1086
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1087
    .line 1088
    .line 1089
    move-result-object v3

    .line 1090
    check-cast v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1091
    .line 1092
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1093
    .line 1094
    const/4 v4, 0x0

    .line 1095
    const/4 v5, 0x0

    .line 1096
    invoke-static {v3, v5, v0, v4}, Landroidx/constraintlayout/core/widgets/analyzer/Grouping;->findDependents(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    .line 1097
    .line 1098
    .line 1099
    goto :goto_1a

    .line 1100
    :cond_38
    const/4 v4, 0x0

    .line 1101
    const/4 v5, 0x0

    .line 1102
    if-eqz v13, :cond_39

    .line 1103
    .line 1104
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1105
    .line 1106
    .line 1107
    move-result-object v2

    .line 1108
    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1109
    .line 1110
    .line 1111
    move-result v3

    .line 1112
    if-eqz v3, :cond_39

    .line 1113
    .line 1114
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1115
    .line 1116
    .line 1117
    move-result-object v3

    .line 1118
    check-cast v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1119
    .line 1120
    invoke-static {v3, v5, v0, v4}, Landroidx/constraintlayout/core/widgets/analyzer/Grouping;->findDependents(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    .line 1121
    .line 1122
    .line 1123
    goto :goto_1b

    .line 1124
    :cond_39
    if-eqz v10, :cond_3a

    .line 1125
    .line 1126
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1127
    .line 1128
    .line 1129
    move-result-object v2

    .line 1130
    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1131
    .line 1132
    .line 1133
    move-result v3

    .line 1134
    if-eqz v3, :cond_3a

    .line 1135
    .line 1136
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1137
    .line 1138
    .line 1139
    move-result-object v3

    .line 1140
    check-cast v3, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 1141
    .line 1142
    const/4 v5, 0x1

    .line 1143
    invoke-static {v3, v5, v0, v4}, Landroidx/constraintlayout/core/widgets/analyzer/Grouping;->findDependents(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    .line 1144
    .line 1145
    .line 1146
    goto :goto_1c

    .line 1147
    :cond_3a
    const/4 v5, 0x1

    .line 1148
    if-eqz v12, :cond_3b

    .line 1149
    .line 1150
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1151
    .line 1152
    .line 1153
    move-result-object v2

    .line 1154
    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1155
    .line 1156
    .line 1157
    move-result v3

    .line 1158
    if-eqz v3, :cond_3b

    .line 1159
    .line 1160
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1161
    .line 1162
    .line 1163
    move-result-object v3

    .line 1164
    check-cast v3, Landroidx/constraintlayout/core/widgets/HelperWidget;

    .line 1165
    .line 1166
    invoke-static {v3, v5, v0, v4}, Landroidx/constraintlayout/core/widgets/analyzer/Grouping;->findDependents(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    .line 1167
    .line 1168
    .line 1169
    move-result-object v6

    .line 1170
    invoke-virtual {v3, v5, v6, v0}, Landroidx/constraintlayout/core/widgets/HelperWidget;->addDependents(ILandroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;Ljava/util/ArrayList;)V

    .line 1171
    .line 1172
    .line 1173
    invoke-virtual {v6, v0}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->cleanup(Ljava/util/ArrayList;)V

    .line 1174
    .line 1175
    .line 1176
    const/4 v4, 0x0

    .line 1177
    const/4 v5, 0x1

    .line 1178
    goto :goto_1d

    .line 1179
    :cond_3b
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 1180
    .line 1181
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1182
    .line 1183
    .line 1184
    move-result-object v2

    .line 1185
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mDependents:Ljava/util/HashSet;

    .line 1186
    .line 1187
    if-eqz v2, :cond_3c

    .line 1188
    .line 1189
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 1190
    .line 1191
    .line 1192
    move-result-object v2

    .line 1193
    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1194
    .line 1195
    .line 1196
    move-result v3

    .line 1197
    if-eqz v3, :cond_3c

    .line 1198
    .line 1199
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1200
    .line 1201
    .line 1202
    move-result-object v3

    .line 1203
    check-cast v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1204
    .line 1205
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1206
    .line 1207
    const/4 v4, 0x0

    .line 1208
    const/4 v5, 0x1

    .line 1209
    invoke-static {v3, v5, v0, v4}, Landroidx/constraintlayout/core/widgets/analyzer/Grouping;->findDependents(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    .line 1210
    .line 1211
    .line 1212
    goto :goto_1e

    .line 1213
    :cond_3c
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 1214
    .line 1215
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1216
    .line 1217
    .line 1218
    move-result-object v2

    .line 1219
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mDependents:Ljava/util/HashSet;

    .line 1220
    .line 1221
    if-eqz v2, :cond_3d

    .line 1222
    .line 1223
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 1224
    .line 1225
    .line 1226
    move-result-object v2

    .line 1227
    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1228
    .line 1229
    .line 1230
    move-result v3

    .line 1231
    if-eqz v3, :cond_3d

    .line 1232
    .line 1233
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1234
    .line 1235
    .line 1236
    move-result-object v3

    .line 1237
    check-cast v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1238
    .line 1239
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1240
    .line 1241
    const/4 v4, 0x0

    .line 1242
    const/4 v5, 0x1

    .line 1243
    invoke-static {v3, v5, v0, v4}, Landroidx/constraintlayout/core/widgets/analyzer/Grouping;->findDependents(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    .line 1244
    .line 1245
    .line 1246
    goto :goto_1f

    .line 1247
    :cond_3d
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 1248
    .line 1249
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1250
    .line 1251
    .line 1252
    move-result-object v2

    .line 1253
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mDependents:Ljava/util/HashSet;

    .line 1254
    .line 1255
    if-eqz v2, :cond_3e

    .line 1256
    .line 1257
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 1258
    .line 1259
    .line 1260
    move-result-object v2

    .line 1261
    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1262
    .line 1263
    .line 1264
    move-result v3

    .line 1265
    if-eqz v3, :cond_3e

    .line 1266
    .line 1267
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1268
    .line 1269
    .line 1270
    move-result-object v3

    .line 1271
    check-cast v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1272
    .line 1273
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1274
    .line 1275
    const/4 v4, 0x0

    .line 1276
    const/4 v5, 0x1

    .line 1277
    invoke-static {v3, v5, v0, v4}, Landroidx/constraintlayout/core/widgets/analyzer/Grouping;->findDependents(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    .line 1278
    .line 1279
    .line 1280
    goto :goto_20

    .line 1281
    :cond_3e
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 1282
    .line 1283
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1284
    .line 1285
    .line 1286
    move-result-object v2

    .line 1287
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mDependents:Ljava/util/HashSet;

    .line 1288
    .line 1289
    if-eqz v2, :cond_3f

    .line 1290
    .line 1291
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 1292
    .line 1293
    .line 1294
    move-result-object v2

    .line 1295
    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1296
    .line 1297
    .line 1298
    move-result v3

    .line 1299
    if-eqz v3, :cond_3f

    .line 1300
    .line 1301
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1302
    .line 1303
    .line 1304
    move-result-object v3

    .line 1305
    check-cast v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1306
    .line 1307
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1308
    .line 1309
    const/4 v4, 0x0

    .line 1310
    const/4 v5, 0x1

    .line 1311
    invoke-static {v3, v5, v0, v4}, Landroidx/constraintlayout/core/widgets/analyzer/Grouping;->findDependents(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    .line 1312
    .line 1313
    .line 1314
    goto :goto_21

    .line 1315
    :cond_3f
    const/4 v4, 0x0

    .line 1316
    const/4 v5, 0x1

    .line 1317
    if-eqz v14, :cond_40

    .line 1318
    .line 1319
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1320
    .line 1321
    .line 1322
    move-result-object v2

    .line 1323
    :goto_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1324
    .line 1325
    .line 1326
    move-result v3

    .line 1327
    if-eqz v3, :cond_40

    .line 1328
    .line 1329
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1330
    .line 1331
    .line 1332
    move-result-object v3

    .line 1333
    check-cast v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1334
    .line 1335
    invoke-static {v3, v5, v0, v4}, Landroidx/constraintlayout/core/widgets/analyzer/Grouping;->findDependents(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    .line 1336
    .line 1337
    .line 1338
    goto :goto_22

    .line 1339
    :cond_40
    const/4 v2, 0x0

    .line 1340
    :goto_23
    if-ge v2, v11, :cond_47

    .line 1341
    .line 1342
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1343
    .line 1344
    .line 1345
    move-result-object v3

    .line 1346
    check-cast v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1347
    .line 1348
    iget-object v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1349
    .line 1350
    const/4 v5, 0x0

    .line 1351
    aget-object v6, v4, v5

    .line 1352
    .line 1353
    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1354
    .line 1355
    if-ne v6, v5, :cond_41

    .line 1356
    .line 1357
    const/4 v6, 0x1

    .line 1358
    aget-object v4, v4, v6

    .line 1359
    .line 1360
    if-ne v4, v5, :cond_41

    .line 1361
    .line 1362
    const/4 v4, 0x1

    .line 1363
    goto :goto_24

    .line 1364
    :cond_41
    const/4 v4, 0x0

    .line 1365
    :goto_24
    if-eqz v4, :cond_46

    .line 1366
    .line 1367
    iget v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalGroup:I

    .line 1368
    .line 1369
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 1370
    .line 1371
    .line 1372
    move-result v5

    .line 1373
    const/4 v6, 0x0

    .line 1374
    :goto_25
    if-ge v6, v5, :cond_43

    .line 1375
    .line 1376
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1377
    .line 1378
    .line 1379
    move-result-object v7

    .line 1380
    check-cast v7, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    .line 1381
    .line 1382
    iget v8, v7, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->id:I

    .line 1383
    .line 1384
    if-ne v4, v8, :cond_42

    .line 1385
    .line 1386
    goto :goto_26

    .line 1387
    :cond_42
    add-int/lit8 v6, v6, 0x1

    .line 1388
    .line 1389
    goto :goto_25

    .line 1390
    :cond_43
    const/4 v7, 0x0

    .line 1391
    :goto_26
    iget v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalGroup:I

    .line 1392
    .line 1393
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 1394
    .line 1395
    .line 1396
    move-result v4

    .line 1397
    const/4 v5, 0x0

    .line 1398
    :goto_27
    if-ge v5, v4, :cond_45

    .line 1399
    .line 1400
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1401
    .line 1402
    .line 1403
    move-result-object v6

    .line 1404
    check-cast v6, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    .line 1405
    .line 1406
    iget v8, v6, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->id:I

    .line 1407
    .line 1408
    if-ne v3, v8, :cond_44

    .line 1409
    .line 1410
    goto :goto_28

    .line 1411
    :cond_44
    add-int/lit8 v5, v5, 0x1

    .line 1412
    .line 1413
    goto :goto_27

    .line 1414
    :cond_45
    const/4 v6, 0x0

    .line 1415
    :goto_28
    if-eqz v7, :cond_46

    .line 1416
    .line 1417
    if-eqz v6, :cond_46

    .line 1418
    .line 1419
    const/4 v3, 0x0

    .line 1420
    invoke-virtual {v7, v3, v6}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->moveTo(ILandroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)V

    .line 1421
    .line 1422
    .line 1423
    const/4 v3, 0x2

    .line 1424
    iput v3, v6, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->orientation:I

    .line 1425
    .line 1426
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1427
    .line 1428
    .line 1429
    :cond_46
    add-int/lit8 v2, v2, 0x1

    .line 1430
    .line 1431
    goto :goto_23

    .line 1432
    :cond_47
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 1433
    .line 1434
    .line 1435
    move-result v2

    .line 1436
    const/4 v3, 0x1

    .line 1437
    if-gt v2, v3, :cond_48

    .line 1438
    .line 1439
    move-object/from16 v6, v27

    .line 1440
    .line 1441
    goto/16 :goto_2e

    .line 1442
    .line 1443
    :cond_48
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1444
    .line 1445
    const/4 v3, 0x0

    .line 1446
    aget-object v2, v2, v3

    .line 1447
    .line 1448
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1449
    .line 1450
    if-ne v2, v3, :cond_4c

    .line 1451
    .line 1452
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1453
    .line 1454
    .line 1455
    move-result-object v2

    .line 1456
    const/4 v3, 0x0

    .line 1457
    const/4 v4, 0x0

    .line 1458
    :goto_29
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1459
    .line 1460
    .line 1461
    move-result v5

    .line 1462
    if-eqz v5, :cond_4b

    .line 1463
    .line 1464
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1465
    .line 1466
    .line 1467
    move-result-object v5

    .line 1468
    check-cast v5, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    .line 1469
    .line 1470
    iget v6, v5, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->orientation:I

    .line 1471
    .line 1472
    const/4 v7, 0x1

    .line 1473
    if-ne v6, v7, :cond_49

    .line 1474
    .line 1475
    move-object/from16 v6, v27

    .line 1476
    .line 1477
    goto :goto_2a

    .line 1478
    :cond_49
    move-object/from16 v6, v27

    .line 1479
    .line 1480
    const/4 v7, 0x0

    .line 1481
    invoke-virtual {v5, v6, v7}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->measureWrap(Landroidx/constraintlayout/core/LinearSystem;I)I

    .line 1482
    .line 1483
    .line 1484
    move-result v8

    .line 1485
    if-le v8, v4, :cond_4a

    .line 1486
    .line 1487
    move-object v3, v5

    .line 1488
    move-object/from16 v27, v6

    .line 1489
    .line 1490
    move v4, v8

    .line 1491
    goto :goto_29

    .line 1492
    :cond_4a
    :goto_2a
    move-object/from16 v27, v6

    .line 1493
    .line 1494
    goto :goto_29

    .line 1495
    :cond_4b
    move-object/from16 v6, v27

    .line 1496
    .line 1497
    if-eqz v3, :cond_4d

    .line 1498
    .line 1499
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1500
    .line 1501
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1502
    .line 1503
    .line 1504
    invoke-virtual {v1, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    .line 1505
    .line 1506
    .line 1507
    goto :goto_2b

    .line 1508
    :cond_4c
    move-object/from16 v6, v27

    .line 1509
    .line 1510
    :cond_4d
    const/4 v3, 0x0

    .line 1511
    :goto_2b
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1512
    .line 1513
    const/4 v4, 0x1

    .line 1514
    aget-object v2, v2, v4

    .line 1515
    .line 1516
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1517
    .line 1518
    if-ne v2, v4, :cond_51

    .line 1519
    .line 1520
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1521
    .line 1522
    .line 1523
    move-result-object v0

    .line 1524
    const/4 v2, 0x0

    .line 1525
    const/4 v4, 0x0

    .line 1526
    :cond_4e
    :goto_2c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1527
    .line 1528
    .line 1529
    move-result v5

    .line 1530
    if-eqz v5, :cond_50

    .line 1531
    .line 1532
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1533
    .line 1534
    .line 1535
    move-result-object v5

    .line 1536
    check-cast v5, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    .line 1537
    .line 1538
    iget v7, v5, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->orientation:I

    .line 1539
    .line 1540
    if-nez v7, :cond_4f

    .line 1541
    .line 1542
    goto :goto_2c

    .line 1543
    :cond_4f
    const/4 v7, 0x1

    .line 1544
    invoke-virtual {v5, v6, v7}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->measureWrap(Landroidx/constraintlayout/core/LinearSystem;I)I

    .line 1545
    .line 1546
    .line 1547
    move-result v8

    .line 1548
    if-le v8, v4, :cond_4e

    .line 1549
    .line 1550
    move-object v2, v5

    .line 1551
    move v4, v8

    .line 1552
    goto :goto_2c

    .line 1553
    :cond_50
    if-eqz v2, :cond_51

    .line 1554
    .line 1555
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1556
    .line 1557
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1558
    .line 1559
    .line 1560
    invoke-virtual {v1, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    .line 1561
    .line 1562
    .line 1563
    goto :goto_2d

    .line 1564
    :cond_51
    const/4 v2, 0x0

    .line 1565
    :goto_2d
    if-nez v3, :cond_53

    .line 1566
    .line 1567
    if-eqz v2, :cond_52

    .line 1568
    .line 1569
    goto :goto_2f

    .line 1570
    :cond_52
    :goto_2e
    const/4 v0, 0x0

    .line 1571
    goto :goto_30

    .line 1572
    :cond_53
    :goto_2f
    const/4 v0, 0x1

    .line 1573
    :goto_30
    if-eqz v0, :cond_58

    .line 1574
    .line 1575
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1576
    .line 1577
    move-object/from16 v2, v26

    .line 1578
    .line 1579
    if-ne v2, v0, :cond_55

    .line 1580
    .line 1581
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 1582
    .line 1583
    .line 1584
    move-result v3

    .line 1585
    move/from16 v4, v25

    .line 1586
    .line 1587
    if-ge v4, v3, :cond_54

    .line 1588
    .line 1589
    if-lez v4, :cond_54

    .line 1590
    .line 1591
    invoke-virtual {v1, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    .line 1592
    .line 1593
    .line 1594
    const/4 v3, 0x1

    .line 1595
    iput-boolean v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mWidthMeasuredTooSmall:Z

    .line 1596
    .line 1597
    goto :goto_31

    .line 1598
    :cond_54
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 1599
    .line 1600
    .line 1601
    move-result v3

    .line 1602
    goto :goto_32

    .line 1603
    :cond_55
    move/from16 v4, v25

    .line 1604
    .line 1605
    :goto_31
    move v3, v4

    .line 1606
    :goto_32
    move-object/from16 v5, v23

    .line 1607
    .line 1608
    if-ne v5, v0, :cond_57

    .line 1609
    .line 1610
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 1611
    .line 1612
    .line 1613
    move-result v0

    .line 1614
    move/from16 v7, v21

    .line 1615
    .line 1616
    if-ge v7, v0, :cond_56

    .line 1617
    .line 1618
    if-lez v7, :cond_56

    .line 1619
    .line 1620
    invoke-virtual {v1, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    .line 1621
    .line 1622
    .line 1623
    const/4 v4, 0x1

    .line 1624
    iput-boolean v4, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHeightMeasuredTooSmall:Z

    .line 1625
    .line 1626
    goto :goto_33

    .line 1627
    :cond_56
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 1628
    .line 1629
    .line 1630
    move-result v4

    .line 1631
    goto :goto_34

    .line 1632
    :cond_57
    move/from16 v7, v21

    .line 1633
    .line 1634
    :goto_33
    move v4, v7

    .line 1635
    :goto_34
    const/4 v0, 0x1

    .line 1636
    goto :goto_36

    .line 1637
    :cond_58
    move/from16 v7, v21

    .line 1638
    .line 1639
    move-object/from16 v5, v23

    .line 1640
    .line 1641
    move/from16 v4, v25

    .line 1642
    .line 1643
    move-object/from16 v2, v26

    .line 1644
    .line 1645
    goto :goto_35

    .line 1646
    :cond_59
    move/from16 v24, v3

    .line 1647
    .line 1648
    move-object v6, v4

    .line 1649
    move-object v2, v5

    .line 1650
    move-object v5, v7

    .line 1651
    move-object/from16 v22, v10

    .line 1652
    .line 1653
    move/from16 v7, v21

    .line 1654
    .line 1655
    move v4, v0

    .line 1656
    :goto_35
    move v3, v4

    .line 1657
    move v4, v7

    .line 1658
    const/4 v0, 0x0

    .line 1659
    :goto_36
    const/16 v7, 0x40

    .line 1660
    .line 1661
    invoke-virtual {v1, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->optimizeFor(I)Z

    .line 1662
    .line 1663
    .line 1664
    move-result v8

    .line 1665
    if-nez v8, :cond_5b

    .line 1666
    .line 1667
    const/16 v8, 0x80

    .line 1668
    .line 1669
    invoke-virtual {v1, v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->optimizeFor(I)Z

    .line 1670
    .line 1671
    .line 1672
    move-result v8

    .line 1673
    if-eqz v8, :cond_5a

    .line 1674
    .line 1675
    goto :goto_37

    .line 1676
    :cond_5a
    const/4 v8, 0x0

    .line 1677
    goto :goto_38

    .line 1678
    :cond_5b
    :goto_37
    const/4 v8, 0x1

    .line 1679
    :goto_38
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1680
    .line 1681
    .line 1682
    const/4 v9, 0x0

    .line 1683
    iput-boolean v9, v6, Landroidx/constraintlayout/core/LinearSystem;->newgraphOptimizer:Z

    .line 1684
    .line 1685
    iget v10, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    .line 1686
    .line 1687
    if-eqz v10, :cond_5c

    .line 1688
    .line 1689
    if-eqz v8, :cond_5c

    .line 1690
    .line 1691
    const/4 v8, 0x1

    .line 1692
    iput-boolean v8, v6, Landroidx/constraintlayout/core/LinearSystem;->newgraphOptimizer:Z

    .line 1693
    .line 1694
    goto :goto_39

    .line 1695
    :cond_5c
    const/4 v8, 0x1

    .line 1696
    :goto_39
    iget-object v10, v1, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 1697
    .line 1698
    iget-object v11, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1699
    .line 1700
    aget-object v12, v11, v9

    .line 1701
    .line 1702
    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1703
    .line 1704
    if-eq v12, v13, :cond_5e

    .line 1705
    .line 1706
    aget-object v11, v11, v8

    .line 1707
    .line 1708
    if-ne v11, v13, :cond_5d

    .line 1709
    .line 1710
    goto :goto_3a

    .line 1711
    :cond_5d
    move v8, v9

    .line 1712
    goto :goto_3b

    .line 1713
    :cond_5e
    :goto_3a
    const/4 v8, 0x1

    .line 1714
    :goto_3b
    iput v9, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    .line 1715
    .line 1716
    iput v9, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    .line 1717
    .line 1718
    move/from16 v11, v24

    .line 1719
    .line 1720
    const/4 v9, 0x0

    .line 1721
    :goto_3c
    if-ge v9, v11, :cond_60

    .line 1722
    .line 1723
    iget-object v12, v1, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 1724
    .line 1725
    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1726
    .line 1727
    .line 1728
    move-result-object v12

    .line 1729
    check-cast v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1730
    .line 1731
    instance-of v13, v12, Landroidx/constraintlayout/core/widgets/WidgetContainer;

    .line 1732
    .line 1733
    if-eqz v13, :cond_5f

    .line 1734
    .line 1735
    check-cast v12, Landroidx/constraintlayout/core/widgets/WidgetContainer;

    .line 1736
    .line 1737
    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/WidgetContainer;->layout()V

    .line 1738
    .line 1739
    .line 1740
    :cond_5f
    add-int/lit8 v9, v9, 0x1

    .line 1741
    .line 1742
    goto :goto_3c

    .line 1743
    :cond_60
    invoke-virtual {v1, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->optimizeFor(I)Z

    .line 1744
    .line 1745
    .line 1746
    move-result v9

    .line 1747
    move v12, v0

    .line 1748
    const/4 v0, 0x0

    .line 1749
    const/4 v13, 0x1

    .line 1750
    :goto_3d
    if-eqz v13, :cond_74

    .line 1751
    .line 1752
    const/4 v14, 0x1

    .line 1753
    add-int/lit8 v15, v0, 0x1

    .line 1754
    .line 1755
    :try_start_0
    invoke-virtual {v6}, Landroidx/constraintlayout/core/LinearSystem;->reset()V

    .line 1756
    .line 1757
    .line 1758
    const/4 v14, 0x0

    .line 1759
    iput v14, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    .line 1760
    .line 1761
    iput v14, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    .line 1762
    .line 1763
    invoke-virtual {v1, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->createObjectVariables(Landroidx/constraintlayout/core/LinearSystem;)V

    .line 1764
    .line 1765
    .line 1766
    const/4 v0, 0x0

    .line 1767
    :goto_3e
    if-ge v0, v11, :cond_61

    .line 1768
    .line 1769
    iget-object v14, v1, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 1770
    .line 1771
    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1772
    .line 1773
    .line 1774
    move-result-object v14

    .line 1775
    check-cast v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1776
    .line 1777
    invoke-virtual {v14, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->createObjectVariables(Landroidx/constraintlayout/core/LinearSystem;)V

    .line 1778
    .line 1779
    .line 1780
    add-int/lit8 v0, v0, 0x1

    .line 1781
    .line 1782
    goto :goto_3e

    .line 1783
    :cond_61
    invoke-virtual {v1, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->addChildrenToSolver(Landroidx/constraintlayout/core/LinearSystem;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 1784
    .line 1785
    .line 1786
    :try_start_1
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalWrapMin:Ljava/lang/ref/WeakReference;

    .line 1787
    .line 1788
    const/4 v13, 0x5

    .line 1789
    if-eqz v0, :cond_62

    .line 1790
    .line 1791
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 1792
    .line 1793
    .line 1794
    move-result-object v0

    .line 1795
    if-eqz v0, :cond_62

    .line 1796
    .line 1797
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalWrapMin:Ljava/lang/ref/WeakReference;

    .line 1798
    .line 1799
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 1800
    .line 1801
    .line 1802
    move-result-object v0

    .line 1803
    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 1804
    .line 1805
    move-object/from16 v14, v22

    .line 1806
    .line 1807
    :try_start_2
    invoke-virtual {v6, v14}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 1808
    .line 1809
    .line 1810
    move-result-object v7

    .line 1811
    invoke-virtual {v6, v0}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 1812
    .line 1813
    .line 1814
    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1815
    move-object/from16 v22, v14

    .line 1816
    .line 1817
    const/4 v14, 0x0

    .line 1818
    :try_start_3
    invoke-virtual {v6, v0, v7, v14, v13}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 1819
    .line 1820
    .line 1821
    const/4 v7, 0x0

    .line 1822
    iput-object v7, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalWrapMin:Ljava/lang/ref/WeakReference;

    .line 1823
    .line 1824
    goto :goto_3f

    .line 1825
    :catch_0
    move-exception v0

    .line 1826
    move-object/from16 v22, v14

    .line 1827
    .line 1828
    goto :goto_40

    .line 1829
    :cond_62
    :goto_3f
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalWrapMax:Ljava/lang/ref/WeakReference;

    .line 1830
    .line 1831
    if-eqz v0, :cond_63

    .line 1832
    .line 1833
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 1834
    .line 1835
    .line 1836
    move-result-object v0

    .line 1837
    if-eqz v0, :cond_63

    .line 1838
    .line 1839
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalWrapMax:Ljava/lang/ref/WeakReference;

    .line 1840
    .line 1841
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 1842
    .line 1843
    .line 1844
    move-result-object v0

    .line 1845
    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1846
    .line 1847
    iget-object v7, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1848
    .line 1849
    invoke-virtual {v6, v7}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 1850
    .line 1851
    .line 1852
    move-result-object v7

    .line 1853
    invoke-virtual {v6, v0}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 1854
    .line 1855
    .line 1856
    move-result-object v0

    .line 1857
    const/4 v14, 0x0

    .line 1858
    invoke-virtual {v6, v7, v0, v14, v13}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 1859
    .line 1860
    .line 1861
    const/4 v7, 0x0

    .line 1862
    iput-object v7, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalWrapMax:Ljava/lang/ref/WeakReference;

    .line 1863
    .line 1864
    :cond_63
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalWrapMin:Ljava/lang/ref/WeakReference;

    .line 1865
    .line 1866
    if-eqz v0, :cond_64

    .line 1867
    .line 1868
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 1869
    .line 1870
    .line 1871
    move-result-object v0

    .line 1872
    if-eqz v0, :cond_64

    .line 1873
    .line 1874
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalWrapMin:Ljava/lang/ref/WeakReference;

    .line 1875
    .line 1876
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 1877
    .line 1878
    .line 1879
    move-result-object v0

    .line 1880
    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 1881
    .line 1882
    move-object/from16 v7, v19

    .line 1883
    .line 1884
    :try_start_4
    invoke-virtual {v6, v7}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 1885
    .line 1886
    .line 1887
    move-result-object v14

    .line 1888
    invoke-virtual {v6, v0}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 1889
    .line 1890
    .line 1891
    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 1892
    move-object/from16 v19, v7

    .line 1893
    .line 1894
    const/4 v7, 0x0

    .line 1895
    :try_start_5
    invoke-virtual {v6, v0, v14, v7, v13}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 1896
    .line 1897
    .line 1898
    const/4 v7, 0x0

    .line 1899
    :try_start_6
    iput-object v7, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalWrapMin:Ljava/lang/ref/WeakReference;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 1900
    .line 1901
    goto :goto_41

    .line 1902
    :catch_1
    move-exception v0

    .line 1903
    move-object/from16 v19, v7

    .line 1904
    .line 1905
    :goto_40
    const/4 v7, 0x0

    .line 1906
    goto :goto_43

    .line 1907
    :cond_64
    :goto_41
    :try_start_7
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalWrapMax:Ljava/lang/ref/WeakReference;

    .line 1908
    .line 1909
    if-eqz v0, :cond_65

    .line 1910
    .line 1911
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 1912
    .line 1913
    .line 1914
    move-result-object v0

    .line 1915
    if-eqz v0, :cond_65

    .line 1916
    .line 1917
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalWrapMax:Ljava/lang/ref/WeakReference;

    .line 1918
    .line 1919
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 1920
    .line 1921
    .line 1922
    move-result-object v0

    .line 1923
    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1924
    .line 1925
    iget-object v7, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1926
    .line 1927
    invoke-virtual {v6, v7}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 1928
    .line 1929
    .line 1930
    move-result-object v7

    .line 1931
    invoke-virtual {v6, v0}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 1932
    .line 1933
    .line 1934
    move-result-object v0

    .line 1935
    const/4 v14, 0x0

    .line 1936
    invoke-virtual {v6, v7, v0, v14, v13}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 1937
    .line 1938
    .line 1939
    const/4 v7, 0x0

    .line 1940
    :try_start_8
    iput-object v7, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalWrapMax:Ljava/lang/ref/WeakReference;

    .line 1941
    .line 1942
    goto :goto_42

    .line 1943
    :catch_2
    move-exception v0

    .line 1944
    goto :goto_40

    .line 1945
    :cond_65
    const/4 v7, 0x0

    .line 1946
    :goto_42
    invoke-virtual {v6}, Landroidx/constraintlayout/core/LinearSystem;->minimize()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 1947
    .line 1948
    .line 1949
    const/16 v23, 0x1

    .line 1950
    .line 1951
    goto :goto_45

    .line 1952
    :catch_3
    move-exception v0

    .line 1953
    :goto_43
    const/4 v13, 0x1

    .line 1954
    goto :goto_44

    .line 1955
    :catch_4
    move-exception v0

    .line 1956
    const/4 v7, 0x0

    .line 1957
    :goto_44
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1958
    .line 1959
    .line 1960
    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 1961
    .line 1962
    new-instance v7, Ljava/lang/StringBuilder;

    .line 1963
    .line 1964
    move/from16 v23, v13

    .line 1965
    .line 1966
    const-string v13, "EXCEPTION : "

    .line 1967
    .line 1968
    invoke-direct {v7, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1969
    .line 1970
    .line 1971
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1972
    .line 1973
    .line 1974
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1975
    .line 1976
    .line 1977
    move-result-object v0

    .line 1978
    invoke-virtual {v14, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1979
    .line 1980
    .line 1981
    :goto_45
    sget-object v0, Landroidx/constraintlayout/core/widgets/Optimizer;->flags:[Z

    .line 1982
    .line 1983
    if-eqz v23, :cond_6a

    .line 1984
    .line 1985
    const/4 v7, 0x2

    .line 1986
    const/4 v13, 0x0

    .line 1987
    aput-boolean v13, v0, v7

    .line 1988
    .line 1989
    const/16 v7, 0x40

    .line 1990
    .line 1991
    invoke-virtual {v1, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->optimizeFor(I)Z

    .line 1992
    .line 1993
    .line 1994
    move-result v13

    .line 1995
    invoke-virtual {v1, v6, v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->updateFromSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    .line 1996
    .line 1997
    .line 1998
    iget-object v14, v1, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 1999
    .line 2000
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    .line 2001
    .line 2002
    .line 2003
    move-result v14

    .line 2004
    const/4 v7, 0x0

    .line 2005
    const/16 v21, 0x0

    .line 2006
    .line 2007
    :goto_46
    if-ge v7, v14, :cond_69

    .line 2008
    .line 2009
    move/from16 v24, v14

    .line 2010
    .line 2011
    iget-object v14, v1, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 2012
    .line 2013
    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2014
    .line 2015
    .line 2016
    move-result-object v14

    .line 2017
    check-cast v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 2018
    .line 2019
    invoke-virtual {v14, v6, v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->updateFromSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    .line 2020
    .line 2021
    .line 2022
    move/from16 v25, v13

    .line 2023
    .line 2024
    iget v13, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidthOverride:I

    .line 2025
    .line 2026
    move/from16 v26, v12

    .line 2027
    .line 2028
    const/4 v12, -0x1

    .line 2029
    if-ne v13, v12, :cond_67

    .line 2030
    .line 2031
    iget v13, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeightOverride:I

    .line 2032
    .line 2033
    if-eq v13, v12, :cond_66

    .line 2034
    .line 2035
    goto :goto_47

    .line 2036
    :cond_66
    const/4 v13, 0x0

    .line 2037
    goto :goto_48

    .line 2038
    :cond_67
    :goto_47
    const/4 v13, 0x1

    .line 2039
    :goto_48
    if-eqz v13, :cond_68

    .line 2040
    .line 2041
    const/16 v21, 0x1

    .line 2042
    .line 2043
    :cond_68
    add-int/lit8 v7, v7, 0x1

    .line 2044
    .line 2045
    move/from16 v14, v24

    .line 2046
    .line 2047
    move/from16 v13, v25

    .line 2048
    .line 2049
    move/from16 v12, v26

    .line 2050
    .line 2051
    goto :goto_46

    .line 2052
    :cond_69
    move/from16 v26, v12

    .line 2053
    .line 2054
    const/4 v12, -0x1

    .line 2055
    goto :goto_4a

    .line 2056
    :cond_6a
    move/from16 v26, v12

    .line 2057
    .line 2058
    const/4 v12, -0x1

    .line 2059
    invoke-virtual {v1, v6, v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->updateFromSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    .line 2060
    .line 2061
    .line 2062
    const/4 v7, 0x0

    .line 2063
    :goto_49
    if-ge v7, v11, :cond_6b

    .line 2064
    .line 2065
    iget-object v13, v1, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 2066
    .line 2067
    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2068
    .line 2069
    .line 2070
    move-result-object v13

    .line 2071
    check-cast v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 2072
    .line 2073
    invoke-virtual {v13, v6, v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->updateFromSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    .line 2074
    .line 2075
    .line 2076
    add-int/lit8 v7, v7, 0x1

    .line 2077
    .line 2078
    goto :goto_49

    .line 2079
    :cond_6b
    const/16 v21, 0x0

    .line 2080
    .line 2081
    :goto_4a
    const/16 v7, 0x8

    .line 2082
    .line 2083
    if-eqz v8, :cond_6e

    .line 2084
    .line 2085
    if-ge v15, v7, :cond_6e

    .line 2086
    .line 2087
    const/4 v13, 0x2

    .line 2088
    aget-boolean v0, v0, v13

    .line 2089
    .line 2090
    if-eqz v0, :cond_6e

    .line 2091
    .line 2092
    const/4 v0, 0x0

    .line 2093
    const/4 v12, 0x0

    .line 2094
    const/4 v14, 0x0

    .line 2095
    :goto_4b
    if-ge v0, v11, :cond_6c

    .line 2096
    .line 2097
    iget-object v13, v1, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 2098
    .line 2099
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2100
    .line 2101
    .line 2102
    move-result-object v13

    .line 2103
    check-cast v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 2104
    .line 2105
    iget v7, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    .line 2106
    .line 2107
    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 2108
    .line 2109
    .line 2110
    move-result v25

    .line 2111
    add-int v7, v25, v7

    .line 2112
    .line 2113
    invoke-static {v14, v7}, Ljava/lang/Math;->max(II)I

    .line 2114
    .line 2115
    .line 2116
    move-result v14

    .line 2117
    iget v7, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    .line 2118
    .line 2119
    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 2120
    .line 2121
    .line 2122
    move-result v13

    .line 2123
    add-int/2addr v13, v7

    .line 2124
    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    .line 2125
    .line 2126
    .line 2127
    move-result v12

    .line 2128
    add-int/lit8 v0, v0, 0x1

    .line 2129
    .line 2130
    const/16 v7, 0x8

    .line 2131
    .line 2132
    const/4 v13, 0x2

    .line 2133
    goto :goto_4b

    .line 2134
    :cond_6c
    iget v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinWidth:I

    .line 2135
    .line 2136
    invoke-static {v0, v14}, Ljava/lang/Math;->max(II)I

    .line 2137
    .line 2138
    .line 2139
    move-result v0

    .line 2140
    iget v7, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinHeight:I

    .line 2141
    .line 2142
    invoke-static {v7, v12}, Ljava/lang/Math;->max(II)I

    .line 2143
    .line 2144
    .line 2145
    move-result v7

    .line 2146
    sget-object v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 2147
    .line 2148
    if-ne v2, v12, :cond_6d

    .line 2149
    .line 2150
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 2151
    .line 2152
    .line 2153
    move-result v13

    .line 2154
    if-ge v13, v0, :cond_6d

    .line 2155
    .line 2156
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    .line 2157
    .line 2158
    .line 2159
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 2160
    .line 2161
    const/4 v13, 0x0

    .line 2162
    aput-object v12, v0, v13

    .line 2163
    .line 2164
    const/16 v21, 0x1

    .line 2165
    .line 2166
    const/16 v26, 0x1

    .line 2167
    .line 2168
    :cond_6d
    if-ne v5, v12, :cond_6e

    .line 2169
    .line 2170
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 2171
    .line 2172
    .line 2173
    move-result v0

    .line 2174
    if-ge v0, v7, :cond_6e

    .line 2175
    .line 2176
    invoke-virtual {v1, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    .line 2177
    .line 2178
    .line 2179
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 2180
    .line 2181
    const/4 v7, 0x1

    .line 2182
    aput-object v12, v0, v7

    .line 2183
    .line 2184
    const/16 v21, 0x1

    .line 2185
    .line 2186
    const/16 v26, 0x1

    .line 2187
    .line 2188
    :cond_6e
    iget v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinWidth:I

    .line 2189
    .line 2190
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 2191
    .line 2192
    .line 2193
    move-result v7

    .line 2194
    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    .line 2195
    .line 2196
    .line 2197
    move-result v0

    .line 2198
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 2199
    .line 2200
    .line 2201
    move-result v7

    .line 2202
    if-le v0, v7, :cond_6f

    .line 2203
    .line 2204
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    .line 2205
    .line 2206
    .line 2207
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 2208
    .line 2209
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 2210
    .line 2211
    const/4 v12, 0x0

    .line 2212
    aput-object v7, v0, v12

    .line 2213
    .line 2214
    const/16 v21, 0x1

    .line 2215
    .line 2216
    const/16 v26, 0x1

    .line 2217
    .line 2218
    :cond_6f
    iget v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinHeight:I

    .line 2219
    .line 2220
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 2221
    .line 2222
    .line 2223
    move-result v7

    .line 2224
    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    .line 2225
    .line 2226
    .line 2227
    move-result v0

    .line 2228
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 2229
    .line 2230
    .line 2231
    move-result v7

    .line 2232
    if-le v0, v7, :cond_70

    .line 2233
    .line 2234
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    .line 2235
    .line 2236
    .line 2237
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 2238
    .line 2239
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 2240
    .line 2241
    const/4 v12, 0x1

    .line 2242
    aput-object v7, v0, v12

    .line 2243
    .line 2244
    move/from16 v21, v12

    .line 2245
    .line 2246
    move/from16 v26, v21

    .line 2247
    .line 2248
    goto :goto_4c

    .line 2249
    :cond_70
    const/4 v12, 0x1

    .line 2250
    :goto_4c
    if-nez v26, :cond_72

    .line 2251
    .line 2252
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 2253
    .line 2254
    const/4 v7, 0x0

    .line 2255
    aget-object v0, v0, v7

    .line 2256
    .line 2257
    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 2258
    .line 2259
    if-ne v0, v13, :cond_71

    .line 2260
    .line 2261
    if-lez v3, :cond_71

    .line 2262
    .line 2263
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 2264
    .line 2265
    .line 2266
    move-result v0

    .line 2267
    if-le v0, v3, :cond_71

    .line 2268
    .line 2269
    iput-boolean v12, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mWidthMeasuredTooSmall:Z

    .line 2270
    .line 2271
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 2272
    .line 2273
    sget-object v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 2274
    .line 2275
    aput-object v14, v0, v7

    .line 2276
    .line 2277
    invoke-virtual {v1, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    .line 2278
    .line 2279
    .line 2280
    move/from16 v21, v12

    .line 2281
    .line 2282
    move/from16 v26, v21

    .line 2283
    .line 2284
    :cond_71
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 2285
    .line 2286
    aget-object v0, v0, v12

    .line 2287
    .line 2288
    if-ne v0, v13, :cond_72

    .line 2289
    .line 2290
    if-lez v4, :cond_72

    .line 2291
    .line 2292
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 2293
    .line 2294
    .line 2295
    move-result v0

    .line 2296
    if-le v0, v4, :cond_72

    .line 2297
    .line 2298
    iput-boolean v12, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHeightMeasuredTooSmall:Z

    .line 2299
    .line 2300
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 2301
    .line 2302
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 2303
    .line 2304
    aput-object v7, v0, v12

    .line 2305
    .line 2306
    invoke-virtual {v1, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    .line 2307
    .line 2308
    .line 2309
    const/16 v0, 0x8

    .line 2310
    .line 2311
    const/4 v12, 0x1

    .line 2312
    const/16 v21, 0x1

    .line 2313
    .line 2314
    goto :goto_4d

    .line 2315
    :cond_72
    move/from16 v12, v26

    .line 2316
    .line 2317
    const/16 v0, 0x8

    .line 2318
    .line 2319
    :goto_4d
    if-le v15, v0, :cond_73

    .line 2320
    .line 2321
    const/4 v13, 0x0

    .line 2322
    goto :goto_4e

    .line 2323
    :cond_73
    move/from16 v13, v21

    .line 2324
    .line 2325
    :goto_4e
    move v0, v15

    .line 2326
    const/16 v7, 0x40

    .line 2327
    .line 2328
    goto/16 :goto_3d

    .line 2329
    .line 2330
    :cond_74
    move/from16 v26, v12

    .line 2331
    .line 2332
    iput-object v10, v1, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 2333
    .line 2334
    if-eqz v26, :cond_75

    .line 2335
    .line 2336
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 2337
    .line 2338
    const/4 v3, 0x0

    .line 2339
    aput-object v2, v0, v3

    .line 2340
    .line 2341
    const/4 v2, 0x1

    .line 2342
    aput-object v5, v0, v2

    .line 2343
    .line 2344
    :cond_75
    iget-object v0, v6, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    .line 2345
    .line 2346
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/widgets/WidgetContainer;->resetSolverVariables(Landroidx/constraintlayout/core/Cache;)V

    .line 2347
    .line 2348
    .line 2349
    return-void
.end method

.method public final optimizeFor(I)Z
    .locals 0

    .line 1
    iget p0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    .line 2
    .line 3
    and-int/2addr p0, p1

    .line 4
    if-ne p0, p1, :cond_0

    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    :goto_0
    return p0
.end method

.method public final reset()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/constraintlayout/core/LinearSystem;->reset()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mPaddingLeft:I

    .line 8
    .line 9
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mPaddingTop:I

    .line 10
    .line 11
    invoke-super {p0}, Landroidx/constraintlayout/core/widgets/WidgetContainer;->reset()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final updateFromRuns(ZZ)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->updateFromRuns(ZZ)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-ge v1, v0, :cond_0

    .line 12
    .line 13
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 20
    .line 21
    invoke-virtual {v2, p1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->updateFromRuns(ZZ)V

    .line 22
    .line 23
    .line 24
    add-int/lit8 v1, v1, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method
