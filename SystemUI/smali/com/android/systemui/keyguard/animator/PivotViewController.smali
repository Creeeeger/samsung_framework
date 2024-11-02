.class public final Lcom/android/systemui/keyguard/animator/PivotViewController;
.super Lcom/android/systemui/keyguard/animator/ViewAnimationController;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public affordancePivotX:I

.field public affordancePivotY:I

.field public final pivot:Landroid/util/SparseArray;

.field public final pivotViews:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;)V
    .locals 11

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/animator/ViewAnimationController;-><init>(Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v6, 0x2

    .line 10
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const/4 v7, 0x3

    .line 15
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const/4 v8, 0x4

    .line 20
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    const/4 v9, 0x5

    .line 25
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    const/16 v10, 0x8

    .line 30
    .line 31
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    filled-new-array/range {v0 .. v5}, [Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iput-object v0, p0, Lcom/android/systemui/keyguard/animator/PivotViewController;->pivotViews:Ljava/util/List;

    .line 44
    .line 45
    new-instance v0, Landroid/util/SparseArray;

    .line 46
    .line 47
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 48
    .line 49
    .line 50
    iput-object v0, p0, Lcom/android/systemui/keyguard/animator/PivotViewController;->pivot:Landroid/util/SparseArray;

    .line 51
    .line 52
    sget-object v0, Lcom/android/systemui/keyguard/animator/PivotViewController$1;->INSTANCE:Lcom/android/systemui/keyguard/animator/PivotViewController$1;

    .line 53
    .line 54
    new-instance v1, Lcom/android/systemui/keyguard/animator/PivotViewController$2;

    .line 55
    .line 56
    invoke-direct {v1, p0}, Lcom/android/systemui/keyguard/animator/PivotViewController$2;-><init>(Lcom/android/systemui/keyguard/animator/PivotViewController;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/keyguard/animator/PivotViewController;->initPivot(ILjava/util/function/Function;Ljava/util/function/Function;)V

    .line 60
    .line 61
    .line 62
    sget-object p1, Lcom/android/systemui/keyguard/animator/PivotViewController$3;->INSTANCE:Lcom/android/systemui/keyguard/animator/PivotViewController$3;

    .line 63
    .line 64
    new-instance v0, Lcom/android/systemui/keyguard/animator/PivotViewController$4;

    .line 65
    .line 66
    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/animator/PivotViewController$4;-><init>(Lcom/android/systemui/keyguard/animator/PivotViewController;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, v10, p1, v0}, Lcom/android/systemui/keyguard/animator/PivotViewController;->initPivot(ILjava/util/function/Function;Ljava/util/function/Function;)V

    .line 70
    .line 71
    .line 72
    sget-object p1, Lcom/android/systemui/keyguard/animator/PivotViewController$5;->INSTANCE:Lcom/android/systemui/keyguard/animator/PivotViewController$5;

    .line 73
    .line 74
    new-instance v0, Lcom/android/systemui/keyguard/animator/PivotViewController$6;

    .line 75
    .line 76
    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/animator/PivotViewController$6;-><init>(Lcom/android/systemui/keyguard/animator/PivotViewController;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, v6, p1, v0}, Lcom/android/systemui/keyguard/animator/PivotViewController;->initPivot(ILjava/util/function/Function;Ljava/util/function/Function;)V

    .line 80
    .line 81
    .line 82
    new-instance p1, Lcom/android/systemui/keyguard/animator/PivotViewController$7;

    .line 83
    .line 84
    invoke-direct {p1, p0}, Lcom/android/systemui/keyguard/animator/PivotViewController$7;-><init>(Lcom/android/systemui/keyguard/animator/PivotViewController;)V

    .line 85
    .line 86
    .line 87
    new-instance v0, Lcom/android/systemui/keyguard/animator/PivotViewController$8;

    .line 88
    .line 89
    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/animator/PivotViewController$8;-><init>(Lcom/android/systemui/keyguard/animator/PivotViewController;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, v8, p1, v0}, Lcom/android/systemui/keyguard/animator/PivotViewController;->initPivot(ILjava/util/function/Function;Ljava/util/function/Function;)V

    .line 93
    .line 94
    .line 95
    new-instance p1, Lcom/android/systemui/keyguard/animator/PivotViewController$9;

    .line 96
    .line 97
    invoke-direct {p1, p0}, Lcom/android/systemui/keyguard/animator/PivotViewController$9;-><init>(Lcom/android/systemui/keyguard/animator/PivotViewController;)V

    .line 98
    .line 99
    .line 100
    new-instance v0, Lcom/android/systemui/keyguard/animator/PivotViewController$10;

    .line 101
    .line 102
    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/animator/PivotViewController$10;-><init>(Lcom/android/systemui/keyguard/animator/PivotViewController;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0, v9, p1, v0}, Lcom/android/systemui/keyguard/animator/PivotViewController;->initPivot(ILjava/util/function/Function;Ljava/util/function/Function;)V

    .line 106
    .line 107
    .line 108
    new-instance p1, Lcom/android/systemui/keyguard/animator/PivotViewController$11;

    .line 109
    .line 110
    invoke-direct {p1, p0}, Lcom/android/systemui/keyguard/animator/PivotViewController$11;-><init>(Lcom/android/systemui/keyguard/animator/PivotViewController;)V

    .line 111
    .line 112
    .line 113
    new-instance v0, Lcom/android/systemui/keyguard/animator/PivotViewController$12;

    .line 114
    .line 115
    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/animator/PivotViewController$12;-><init>(Lcom/android/systemui/keyguard/animator/PivotViewController;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0, v7, p1, v0}, Lcom/android/systemui/keyguard/animator/PivotViewController;->initPivot(ILjava/util/function/Function;Ljava/util/function/Function;)V

    .line 119
    .line 120
    .line 121
    sget-object p1, Lcom/android/systemui/keyguard/animator/PivotViewController$13;->INSTANCE:Lcom/android/systemui/keyguard/animator/PivotViewController$13;

    .line 122
    .line 123
    new-instance v0, Lcom/android/systemui/keyguard/animator/PivotViewController$14;

    .line 124
    .line 125
    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/animator/PivotViewController$14;-><init>(Lcom/android/systemui/keyguard/animator/PivotViewController;)V

    .line 126
    .line 127
    .line 128
    const/4 v1, 0x6

    .line 129
    invoke-virtual {p0, v1, p1, v0}, Lcom/android/systemui/keyguard/animator/PivotViewController;->initPivot(ILjava/util/function/Function;Ljava/util/function/Function;)V

    .line 130
    .line 131
    .line 132
    return-void
.end method


# virtual methods
.method public final initPivot(ILjava/util/function/Function;Ljava/util/function/Function;)V
    .locals 1

    .line 1
    new-instance v0, Landroid/util/Pair;

    .line 2
    .line 3
    invoke-direct {v0, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/PivotViewController;->pivot:Landroid/util/SparseArray;

    .line 7
    .line 8
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
