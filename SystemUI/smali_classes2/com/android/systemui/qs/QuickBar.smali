.class public final Lcom/android/systemui/qs/QuickBar;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public barController:Lcom/android/systemui/qs/bar/BarController;

.field public final qsExpandedSupplier:Ljava/util/function/BooleanSupplier;


# direct methods
.method public constructor <init>(Ljava/util/function/BooleanSupplier;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/qs/QuickBar;->qsExpandedSupplier:Ljava/util/function/BooleanSupplier;

    .line 5
    .line 6
    return-void
.end method
