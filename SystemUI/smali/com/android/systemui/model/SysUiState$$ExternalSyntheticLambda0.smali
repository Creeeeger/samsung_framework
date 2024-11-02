.class public final synthetic Lcom/android/systemui/model/SysUiState$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:J


# direct methods
.method public synthetic constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/android/systemui/model/SysUiState$$ExternalSyntheticLambda0;->f$0:J

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/systemui/model/SysUiState$$ExternalSyntheticLambda0;->f$0:J

    .line 2
    .line 3
    check-cast p1, Lcom/android/systemui/model/SysUiState$SysUiStateCallback;

    .line 4
    .line 5
    invoke-interface {p1, v0, v1}, Lcom/android/systemui/model/SysUiState$SysUiStateCallback;->onSystemUiStateChanged(J)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
