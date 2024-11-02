.class public final Lcom/facebook/rebound/ui/SpringConfiguratorView$SpringSelectedListener;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field public final synthetic this$0:Lcom/facebook/rebound/ui/SpringConfiguratorView;


# direct methods
.method private constructor <init>(Lcom/facebook/rebound/ui/SpringConfiguratorView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView$SpringSelectedListener;->this$0:Lcom/facebook/rebound/ui/SpringConfiguratorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/rebound/ui/SpringConfiguratorView;Lcom/facebook/rebound/ui/SpringConfiguratorView$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/facebook/rebound/ui/SpringConfiguratorView$SpringSelectedListener;-><init>(Lcom/facebook/rebound/ui/SpringConfiguratorView;)V

    return-void
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView$SpringSelectedListener;->this$0:Lcom/facebook/rebound/ui/SpringConfiguratorView;

    .line 2
    .line 3
    iget-object p2, p1, Lcom/facebook/rebound/ui/SpringConfiguratorView;->mSpringConfigs:Ljava/util/List;

    .line 4
    .line 5
    check-cast p2, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    check-cast p2, Lcom/facebook/rebound/SpringConfig;

    .line 12
    .line 13
    iput-object p2, p1, Lcom/facebook/rebound/ui/SpringConfiguratorView;->mSelectedSpringConfig:Lcom/facebook/rebound/SpringConfig;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView$SpringSelectedListener;->this$0:Lcom/facebook/rebound/ui/SpringConfiguratorView;

    .line 16
    .line 17
    iget-object p1, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->mSelectedSpringConfig:Lcom/facebook/rebound/SpringConfig;

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    iget-wide p2, p1, Lcom/facebook/rebound/SpringConfig;->tension:D

    .line 23
    .line 24
    const-wide/16 p4, 0x0

    .line 25
    .line 26
    cmpl-double v0, p2, p4

    .line 27
    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    move-wide p2, p4

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const-wide v0, 0x4068400000000000L    # 194.0

    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    sub-double/2addr p2, v0

    .line 38
    const-wide v0, 0x400cf5c28f5c28f6L    # 3.62

    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    div-double/2addr p2, v0

    .line 44
    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    .line 45
    .line 46
    add-double/2addr p2, v0

    .line 47
    :goto_0
    double-to-float p2, p2

    .line 48
    const/4 p3, 0x0

    .line 49
    sub-float/2addr p2, p3

    .line 50
    const v0, 0x47c35000    # 100000.0f

    .line 51
    .line 52
    .line 53
    mul-float/2addr p2, v0

    .line 54
    const/high16 v1, 0x43480000    # 200.0f

    .line 55
    .line 56
    div-float/2addr p2, v1

    .line 57
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    iget-wide v1, p1, Lcom/facebook/rebound/SpringConfig;->friction:D

    .line 62
    .line 63
    cmpl-double p1, v1, p4

    .line 64
    .line 65
    if-nez p1, :cond_1

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_1
    const-wide/high16 p4, 0x4039000000000000L    # 25.0

    .line 69
    .line 70
    sub-double/2addr v1, p4

    .line 71
    const-wide/high16 p4, 0x4008000000000000L    # 3.0

    .line 72
    .line 73
    div-double/2addr v1, p4

    .line 74
    const-wide/high16 p4, 0x4020000000000000L    # 8.0

    .line 75
    .line 76
    add-double/2addr p4, v1

    .line 77
    :goto_1
    double-to-float p1, p4

    .line 78
    sub-float/2addr p1, p3

    .line 79
    mul-float/2addr p1, v0

    .line 80
    const/high16 p3, 0x42480000    # 50.0f

    .line 81
    .line 82
    div-float/2addr p1, p3

    .line 83
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    iget-object p3, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->mTensionSeekBar:Landroid/widget/SeekBar;

    .line 88
    .line 89
    invoke-virtual {p3, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 90
    .line 91
    .line 92
    iget-object p0, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->mFrictionSeekBar:Landroid/widget/SeekBar;

    .line 93
    .line 94
    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 95
    .line 96
    .line 97
    return-void
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    .line 1
    return-void
.end method
