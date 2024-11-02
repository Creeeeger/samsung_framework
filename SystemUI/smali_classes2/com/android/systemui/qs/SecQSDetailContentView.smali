.class public Lcom/android/systemui/qs/SecQSDetailContentView;
.super Landroid/widget/LinearLayout;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public hasMinHeight:Z

.field public final mContext:Landroid/content/Context;

.field public mQsPanelController:Lcom/android/systemui/qs/SecQSPanelController;

.field public final mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    const/4 p2, 0x0

    .line 5
    iput-boolean p2, p0, Lcom/android/systemui/qs/SecQSDetailContentView;->hasMinHeight:Z

    .line 6
    .line 7
    iput-object p1, p0, Lcom/android/systemui/qs/SecQSDetailContentView;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    const-class p1, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 16
    .line 17
    iput-object p1, p0, Lcom/android/systemui/qs/SecQSDetailContentView;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final onMeasure(II)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetailContentView;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/qs/SecQSDetailContentView;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const v1, 0x7f070b72

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    int-to-float v1, v1

    .line 20
    sget-boolean v2, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    .line 21
    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    const v1, 0x7f070b73

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    int-to-float v1, v0

    .line 32
    :cond_0
    float-to-int v0, v1

    .line 33
    iget-object v1, p0, Lcom/android/systemui/qs/SecQSDetailContentView;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 34
    .line 35
    iget-object v3, p0, Lcom/android/systemui/qs/SecQSDetailContentView;->mContext:Landroid/content/Context;

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    const v3, 0x7f070b74

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    int-to-float v3, v3

    .line 52
    if-eqz v2, :cond_1

    .line 53
    .line 54
    const v3, 0x7f070b75

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    int-to-float v3, v1

    .line 62
    :cond_1
    float-to-int v1, v3

    .line 63
    if-eqz v2, :cond_3

    .line 64
    .line 65
    iget-boolean v2, p0, Lcom/android/systemui/qs/SecQSDetailContentView;->hasMinHeight:Z

    .line 66
    .line 67
    if-eqz v2, :cond_2

    .line 68
    .line 69
    move v0, v1

    .line 70
    :cond_2
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 71
    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/qs/SecQSDetailContentView;->mQsPanelController:Lcom/android/systemui/qs/SecQSPanelController;

    .line 75
    .line 76
    iget-object v3, v2, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mDetailRecord:Lcom/android/systemui/qs/SecQSPanelControllerBase$Record;

    .line 77
    .line 78
    if-eqz v3, :cond_4

    .line 79
    .line 80
    iget-object v2, v2, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mDetailTileSpec:Ljava/lang/String;

    .line 81
    .line 82
    if-nez v2, :cond_5

    .line 83
    .line 84
    :cond_4
    const-string v2, ""

    .line 85
    .line 86
    :cond_5
    const-string v3, "Wifi"

    .line 87
    .line 88
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    if-nez v3, :cond_7

    .line 93
    .line 94
    const-string v3, "Bluetooth"

    .line 95
    .line 96
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    if-eqz v2, :cond_6

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_6
    const/4 v2, 0x0

    .line 104
    goto :goto_1

    .line 105
    :cond_7
    :goto_0
    const/4 v2, 0x1

    .line 106
    :goto_1
    if-eqz v2, :cond_8

    .line 107
    .line 108
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 109
    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_8
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 113
    .line 114
    .line 115
    :goto_2
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    if-le v1, v0, :cond_9

    .line 120
    .line 121
    const/high16 p2, -0x80000000

    .line 122
    .line 123
    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 124
    .line 125
    .line 126
    move-result p2

    .line 127
    :cond_9
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 128
    .line 129
    .line 130
    return-void
.end method
