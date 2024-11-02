.class public final Lcom/android/systemui/shade/SecPanelFoldHelper;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final qsExpandedSupplier:Ljava/util/function/BooleanSupplier;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/shade/SecPanelFoldHelper$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/shade/SecPanelFoldHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Ljava/util/function/BooleanSupplier;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/shade/SecPanelFoldHelper;->qsExpandedSupplier:Ljava/util/function/BooleanSupplier;

    .line 5
    .line 6
    new-instance p1, Lcom/android/systemui/shade/SecPanelFoldHelper$displayLifecycleObserver$1;

    .line 7
    .line 8
    invoke-direct {p1, p0}, Lcom/android/systemui/shade/SecPanelFoldHelper$displayLifecycleObserver$1;-><init>(Lcom/android/systemui/shade/SecPanelFoldHelper;)V

    .line 9
    .line 10
    .line 11
    new-instance p1, Lcom/android/systemui/shade/SecPanelFoldHelper$screenRatioListener$1;

    .line 12
    .line 13
    invoke-direct {p1, p0}, Lcom/android/systemui/shade/SecPanelFoldHelper$screenRatioListener$1;-><init>(Lcom/android/systemui/shade/SecPanelFoldHelper;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
