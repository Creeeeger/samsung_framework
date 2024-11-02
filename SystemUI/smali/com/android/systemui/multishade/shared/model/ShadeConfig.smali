.class public abstract Lcom/android/systemui/multishade/shared/model/ShadeConfig;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final shadeIds:Ljava/util/List;

.field public final swipeCollapseThreshold:F

.field public final swipeExpandThreshold:F


# direct methods
.method private constructor <init>(Ljava/util/List;FF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/systemui/multishade/shared/model/ShadeId;",
            ">;FF)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/android/systemui/multishade/shared/model/ShadeConfig;->shadeIds:Ljava/util/List;

    .line 4
    iput p2, p0, Lcom/android/systemui/multishade/shared/model/ShadeConfig;->swipeCollapseThreshold:F

    .line 5
    iput p3, p0, Lcom/android/systemui/multishade/shared/model/ShadeConfig;->swipeExpandThreshold:F

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;FFLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/multishade/shared/model/ShadeConfig;-><init>(Ljava/util/List;FF)V

    return-void
.end method
