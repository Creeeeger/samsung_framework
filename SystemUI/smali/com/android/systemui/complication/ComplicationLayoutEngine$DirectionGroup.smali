.class public final Lcom/android/systemui/complication/ComplicationLayoutEngine$DirectionGroup;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/complication/ComplicationLayoutEngine$ViewEntry$Parent;


# instance fields
.field public final mParent:Lcom/android/systemui/complication/ComplicationLayoutEngine$DirectionGroup$Parent;

.field public final mViews:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/android/systemui/complication/ComplicationLayoutEngine$DirectionGroup$Parent;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/systemui/complication/ComplicationLayoutEngine$DirectionGroup;->mViews:Ljava/util/ArrayList;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/systemui/complication/ComplicationLayoutEngine$DirectionGroup;->mParent:Lcom/android/systemui/complication/ComplicationLayoutEngine$DirectionGroup$Parent;

    .line 12
    .line 13
    return-void
.end method
