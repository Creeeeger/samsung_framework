.class public final Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack$7$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack$7$1;->this$0:Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    check-cast p1, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack$7$1;->this$0:Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack;

    .line 4
    .line 5
    iget-object v0, p1, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;->event:Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;

    .line 6
    .line 7
    check-cast v0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetNavBarLargeCoverScreenPadding;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;->manager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->isGestureMode()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    const/4 v1, 0x3

    .line 16
    const/4 v2, 0x2

    .line 17
    const/4 v3, 0x1

    .line 18
    const/4 v4, 0x0

    .line 19
    if-eqz p1, :cond_4

    .line 20
    .line 21
    iget p1, v0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetNavBarLargeCoverScreenPadding;->rotation:I

    .line 22
    .line 23
    if-eqz p1, :cond_3

    .line 24
    .line 25
    if-eq p1, v3, :cond_2

    .line 26
    .line 27
    if-eq p1, v2, :cond_1

    .line 28
    .line 29
    if-eq p1, v1, :cond_0

    .line 30
    .line 31
    new-instance p1, Landroid/graphics/Rect;

    .line 32
    .line 33
    iget p0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack;->sidePadding:I

    .line 34
    .line 35
    invoke-direct {p1, v4, v4, p0, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    new-instance p1, Landroid/graphics/Rect;

    .line 40
    .line 41
    iget p0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack;->gestureSidePadding:I

    .line 42
    .line 43
    invoke-direct {p1, p0, v4, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    new-instance p1, Landroid/graphics/Rect;

    .line 48
    .line 49
    invoke-direct {p1, v4, v4, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    new-instance p1, Landroid/graphics/Rect;

    .line 54
    .line 55
    iget p0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack;->gestureSidePadding:I

    .line 56
    .line 57
    invoke-direct {p1, v4, v4, p0, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_3
    new-instance p1, Landroid/graphics/Rect;

    .line 62
    .line 63
    iget p0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack;->sidePadding:I

    .line 64
    .line 65
    invoke-direct {p1, v4, v4, p0, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_4
    iget p1, v0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetNavBarLargeCoverScreenPadding;->rotation:I

    .line 70
    .line 71
    if-eqz p1, :cond_8

    .line 72
    .line 73
    if-eq p1, v3, :cond_7

    .line 74
    .line 75
    if-eq p1, v2, :cond_6

    .line 76
    .line 77
    if-eq p1, v1, :cond_5

    .line 78
    .line 79
    new-instance p1, Landroid/graphics/Rect;

    .line 80
    .line 81
    iget p0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack;->sidePadding:I

    .line 82
    .line 83
    invoke-direct {p1, v4, v4, p0, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_5
    new-instance p1, Landroid/graphics/Rect;

    .line 88
    .line 89
    iget p0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack;->sidePadding:I

    .line 90
    .line 91
    invoke-direct {p1, v4, v4, v4, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_6
    new-instance p1, Landroid/graphics/Rect;

    .line 96
    .line 97
    iget p0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack;->sidePadding:I

    .line 98
    .line 99
    invoke-direct {p1, p0, v4, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_7
    new-instance p1, Landroid/graphics/Rect;

    .line 104
    .line 105
    iget p0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack;->sidePadding:I

    .line 106
    .line 107
    invoke-direct {p1, v4, p0, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_8
    new-instance p1, Landroid/graphics/Rect;

    .line 112
    .line 113
    iget p0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack;->sidePadding:I

    .line 114
    .line 115
    invoke-direct {p1, v4, v4, p0, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 116
    .line 117
    .line 118
    :goto_0
    return-object p1
.end method
