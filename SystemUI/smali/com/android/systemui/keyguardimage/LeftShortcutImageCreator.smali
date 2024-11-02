.class public final Lcom/android/systemui/keyguardimage/LeftShortcutImageCreator;
.super Lcom/android/systemui/keyguardimage/AbsShortcutImageCreator;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguardimage/AbsShortcutImageCreator;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final createImage(Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;Landroid/graphics/Point;)Landroid/graphics/Bitmap;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/keyguardimage/AbsShortcutImageCreator;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "layout_inflater"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/view/LayoutInflater;

    .line 10
    .line 11
    const v1, 0x7f0d0160

    .line 12
    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const v1, 0x7f0a0ac7

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/android/systemui/keyguardimage/AbsShortcutImageCreator;->getShortcutManager()Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    const/4 v3, 0x0

    .line 33
    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isShortcutForCamera(I)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    const/high16 v2, -0x1000000

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 v2, -0x1

    .line 43
    :goto_0
    iput v2, v1, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleColor:I

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/android/systemui/keyguardimage/AbsShortcutImageCreator;->getShortcutManager()Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->hasShortcut(I)Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    invoke-virtual {p0, v1, v3, v2}, Lcom/android/systemui/keyguardimage/AbsShortcutImageCreator;->updateCustomShortcutIcon(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;IZ)V

    .line 54
    .line 55
    .line 56
    invoke-static {v0, p1}, Lcom/android/systemui/keyguardimage/ImageCreator;->getViewImage(Landroid/view/View;Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;)Landroid/graphics/Bitmap;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    if-eqz v0, :cond_1

    .line 61
    .line 62
    if-eqz p2, :cond_1

    .line 63
    .line 64
    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguardimage/AbsShortcutImageCreator;->getSideMargin(Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;)I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    iput v1, p2, Landroid/graphics/Point;->x:I

    .line 69
    .line 70
    iget v1, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->height:I

    .line 71
    .line 72
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    sub-int/2addr v1, v2

    .line 77
    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguardimage/AbsShortcutImageCreator;->getBottomMargin(Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;)I

    .line 78
    .line 79
    .line 80
    move-result p0

    .line 81
    sub-int/2addr v1, p0

    .line 82
    iput v1, p2, Landroid/graphics/Point;->y:I

    .line 83
    .line 84
    :cond_1
    return-object v0
.end method
