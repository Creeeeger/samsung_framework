.class public final Lcom/android/systemui/complication/ComplicationLayoutEngine;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/complication/Complication$VisibilityController;


# instance fields
.field public final mEntries:Ljava/util/HashMap;

.field public final mFadeInDuration:I

.field public final mFadeOutDuration:I

.field public final mLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final mPositions:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;IIIIILcom/android/systemui/touch/TouchInsetManager$TouchInsetSession;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance p2, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Lcom/android/systemui/complication/ComplicationLayoutEngine;->mEntries:Ljava/util/HashMap;

    .line 10
    .line 11
    new-instance p2, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p2, p0, Lcom/android/systemui/complication/ComplicationLayoutEngine;->mPositions:Ljava/util/HashMap;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/android/systemui/complication/ComplicationLayoutEngine;->mLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 19
    .line 20
    iput p8, p0, Lcom/android/systemui/complication/ComplicationLayoutEngine;->mFadeInDuration:I

    .line 21
    .line 22
    iput p9, p0, Lcom/android/systemui/complication/ComplicationLayoutEngine;->mFadeOutDuration:I

    .line 23
    .line 24
    new-instance p0, Ljava/util/HashMap;

    .line 25
    .line 26
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 27
    .line 28
    .line 29
    new-instance p1, Lcom/android/systemui/complication/ComplicationLayoutEngine$Margins;

    .line 30
    .line 31
    const/4 p2, 0x0

    .line 32
    invoke-direct {p1, p3, p2, p2, p2}, Lcom/android/systemui/complication/ComplicationLayoutEngine$Margins;-><init>(IIII)V

    .line 33
    .line 34
    .line 35
    new-instance p3, Lcom/android/systemui/complication/ComplicationLayoutEngine$Margins;

    .line 36
    .line 37
    invoke-direct {p3, p2, p4, p2, p2}, Lcom/android/systemui/complication/ComplicationLayoutEngine$Margins;-><init>(IIII)V

    .line 38
    .line 39
    .line 40
    new-instance p4, Lcom/android/systemui/complication/ComplicationLayoutEngine$Margins;

    .line 41
    .line 42
    invoke-direct {p4, p2, p2, p5, p2}, Lcom/android/systemui/complication/ComplicationLayoutEngine$Margins;-><init>(IIII)V

    .line 43
    .line 44
    .line 45
    new-instance p5, Lcom/android/systemui/complication/ComplicationLayoutEngine$Margins;

    .line 46
    .line 47
    invoke-direct {p5, p2, p2, p2, p6}, Lcom/android/systemui/complication/ComplicationLayoutEngine$Margins;-><init>(IIII)V

    .line 48
    .line 49
    .line 50
    const/4 p2, 0x5

    .line 51
    const/16 p6, 0x8

    .line 52
    .line 53
    invoke-static {p0, p2, p6, p3}, Lcom/android/systemui/complication/ComplicationLayoutEngine;->addToMapping(Ljava/util/HashMap;IILcom/android/systemui/complication/ComplicationLayoutEngine$Margins;)V

    .line 54
    .line 55
    .line 56
    const/4 p7, 0x2

    .line 57
    invoke-static {p0, p2, p7, p1}, Lcom/android/systemui/complication/ComplicationLayoutEngine;->addToMapping(Ljava/util/HashMap;IILcom/android/systemui/complication/ComplicationLayoutEngine$Margins;)V

    .line 58
    .line 59
    .line 60
    const/4 p2, 0x6

    .line 61
    invoke-static {p0, p2, p6, p5}, Lcom/android/systemui/complication/ComplicationLayoutEngine;->addToMapping(Ljava/util/HashMap;IILcom/android/systemui/complication/ComplicationLayoutEngine$Margins;)V

    .line 62
    .line 63
    .line 64
    const/4 p6, 0x1

    .line 65
    invoke-static {p0, p2, p6, p1}, Lcom/android/systemui/complication/ComplicationLayoutEngine;->addToMapping(Ljava/util/HashMap;IILcom/android/systemui/complication/ComplicationLayoutEngine$Margins;)V

    .line 66
    .line 67
    .line 68
    const/16 p1, 0x9

    .line 69
    .line 70
    const/4 p2, 0x4

    .line 71
    invoke-static {p0, p1, p2, p3}, Lcom/android/systemui/complication/ComplicationLayoutEngine;->addToMapping(Ljava/util/HashMap;IILcom/android/systemui/complication/ComplicationLayoutEngine$Margins;)V

    .line 72
    .line 73
    .line 74
    invoke-static {p0, p1, p7, p4}, Lcom/android/systemui/complication/ComplicationLayoutEngine;->addToMapping(Ljava/util/HashMap;IILcom/android/systemui/complication/ComplicationLayoutEngine$Margins;)V

    .line 75
    .line 76
    .line 77
    const/16 p1, 0xa

    .line 78
    .line 79
    invoke-static {p0, p1, p2, p5}, Lcom/android/systemui/complication/ComplicationLayoutEngine;->addToMapping(Ljava/util/HashMap;IILcom/android/systemui/complication/ComplicationLayoutEngine$Margins;)V

    .line 80
    .line 81
    .line 82
    invoke-static {p0, p1, p6, p4}, Lcom/android/systemui/complication/ComplicationLayoutEngine;->addToMapping(Ljava/util/HashMap;IILcom/android/systemui/complication/ComplicationLayoutEngine$Margins;)V

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method public static addToMapping(Ljava/util/HashMap;IILcom/android/systemui/complication/ComplicationLayoutEngine$Margins;)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Ljava/util/HashMap;

    .line 32
    .line 33
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    return-void
.end method
