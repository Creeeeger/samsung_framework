.class public final Lcom/android/systemui/qs/bar/VideoCallMicModeUtil;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final context:Landroid/content/Context;

.field public final resourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/qs/SecQSPanelResourcePicker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/qs/bar/VideoCallMicModeUtil;->context:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/qs/bar/VideoCallMicModeUtil;->resourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getPixelSize(I)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/bar/VideoCallMicModeUtil;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final getResources()Lcom/android/systemui/qs/bar/VideoCallMicModeResources;
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/bar/VideoCallMicModeUtil;->resourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/systemui/qs/bar/VideoCallMicModeUtil;->context:Landroid/content/Context;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const v2, 0x7f070598

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    invoke-static {v0}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getTileIconSize(Landroid/content/Context;)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const v2, 0x7f071523

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/bar/VideoCallMicModeUtil;->getPixelSize(I)I

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    const/4 v2, 0x2

    .line 31
    invoke-static {v1, v5, v2, v4}, Landroidx/appcompat/widget/AbsActionBarView$$ExternalSyntheticOutline0;->m(IIII)I

    .line 32
    .line 33
    .line 34
    move-result v6

    .line 35
    sget-boolean v1, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    .line 36
    .line 37
    if-eqz v1, :cond_0

    .line 38
    .line 39
    const/4 v1, 0x0

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const v1, 0x7f071524

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/bar/VideoCallMicModeUtil;->getPixelSize(I)I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    :goto_0
    move v7, v1

    .line 49
    const v1, 0x7f071526

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/bar/VideoCallMicModeUtil;->getPixelSize(I)I

    .line 53
    .line 54
    .line 55
    move-result v8

    .line 56
    const v1, 0x7f071525

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/bar/VideoCallMicModeUtil;->getPixelSize(I)I

    .line 60
    .line 61
    .line 62
    move-result v9

    .line 63
    invoke-static {v0}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getPanelWidth(Landroid/content/Context;)I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    const v1, 0x7f070596

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/bar/VideoCallMicModeUtil;->getPixelSize(I)I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    add-int/2addr v2, v0

    .line 75
    div-int/lit8 v10, v2, 0x4

    .line 76
    .line 77
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/bar/VideoCallMicModeUtil;->getPixelSize(I)I

    .line 78
    .line 79
    .line 80
    move-result v11

    .line 81
    const v0, 0x7f071521

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/bar/VideoCallMicModeUtil;->getPixelSize(I)I

    .line 85
    .line 86
    .line 87
    move-result v12

    .line 88
    new-instance p0, Lcom/android/systemui/qs/bar/VideoCallMicModeResources;

    .line 89
    .line 90
    move-object v3, p0

    .line 91
    invoke-direct/range {v3 .. v12}, Lcom/android/systemui/qs/bar/VideoCallMicModeResources;-><init>(IIIIIIIII)V

    .line 92
    .line 93
    .line 94
    return-object p0
.end method

.method public final inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/bar/VideoCallMicModeUtil;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    if-eqz p3, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const p2, 0x7f080f65

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    :cond_1
    :goto_0
    return-object p0
.end method
