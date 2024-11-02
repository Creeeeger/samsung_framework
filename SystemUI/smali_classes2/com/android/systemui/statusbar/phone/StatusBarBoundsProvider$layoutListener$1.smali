.class public final Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider$layoutListener$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider$layoutListener$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 10

    .line 1
    move-object v0, p0

    .line 2
    new-instance v1, Lcom/android/systemui/statusbar/phone/BoundsPair;

    .line 3
    .line 4
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider$layoutListener$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider;

    .line 5
    .line 6
    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider;->startSideContent:Landroid/view/View;

    .line 7
    .line 8
    invoke-static {v2}, Lcom/android/systemui/util/ConvenienceExtensionsKt;->getBoundsOnScreen(Landroid/view/View;)Landroid/graphics/Rect;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider$layoutListener$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider;

    .line 13
    .line 14
    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider;->endSideContent:Landroid/view/View;

    .line 15
    .line 16
    invoke-static {v3}, Lcom/android/systemui/util/ConvenienceExtensionsKt;->getBoundsOnScreen(Landroid/view/View;)Landroid/graphics/Rect;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/BoundsPair;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 21
    .line 22
    .line 23
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider$layoutListener$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider;

    .line 24
    .line 25
    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider;->previousBounds:Lcom/android/systemui/statusbar/phone/BoundsPair;

    .line 26
    .line 27
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-nez v2, :cond_2

    .line 32
    .line 33
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider$layoutListener$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider;

    .line 34
    .line 35
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider;->previousBounds:Lcom/android/systemui/statusbar/phone/BoundsPair;

    .line 36
    .line 37
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider;->changeListeners:Ljava/util/Set;

    .line 38
    .line 39
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_2

    .line 48
    .line 49
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Lcom/android/systemui/statusbar/phone/SystemBarAttributesListener;

    .line 54
    .line 55
    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/SystemBarAttributesListener;->lastSystemBarAttributesParams:Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;

    .line 56
    .line 57
    if-eqz v2, :cond_0

    .line 58
    .line 59
    iget-object v3, v2, Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;->letterboxesArray:[Lcom/android/internal/statusbar/LetterboxDetails;

    .line 60
    .line 61
    array-length v4, v3

    .line 62
    const/4 v5, 0x1

    .line 63
    if-nez v4, :cond_1

    .line 64
    .line 65
    move v4, v5

    .line 66
    goto :goto_1

    .line 67
    :cond_1
    const/4 v4, 0x0

    .line 68
    :goto_1
    xor-int/2addr v4, v5

    .line 69
    if-eqz v4, :cond_0

    .line 70
    .line 71
    iget v4, v2, Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;->displayId:I

    .line 72
    .line 73
    iget v5, v2, Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;->appearance:I

    .line 74
    .line 75
    iget-object v6, v2, Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;->appearanceRegionsArray:[Lcom/android/internal/view/AppearanceRegion;

    .line 76
    .line 77
    iget-boolean v7, v2, Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;->navbarColorManagedByIme:Z

    .line 78
    .line 79
    iget v8, v2, Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;->behavior:I

    .line 80
    .line 81
    iget v9, v2, Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;->requestedVisibleTypes:I

    .line 82
    .line 83
    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;->packageName:Ljava/lang/String;

    .line 84
    .line 85
    move-object p0, v1

    .line 86
    move p1, v4

    .line 87
    move p2, v5

    .line 88
    move-object p3, v6

    .line 89
    move p4, v7

    .line 90
    move p5, v8

    .line 91
    move/from16 p6, v9

    .line 92
    .line 93
    move-object/from16 p7, v2

    .line 94
    .line 95
    move-object/from16 p8, v3

    .line 96
    .line 97
    invoke-virtual/range {p0 .. p8}, Lcom/android/systemui/statusbar/phone/SystemBarAttributesListener;->onSystemBarAttributesChanged(II[Lcom/android/internal/view/AppearanceRegion;ZIILjava/lang/String;[Lcom/android/internal/statusbar/LetterboxDetails;)V

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_2
    return-void
.end method
