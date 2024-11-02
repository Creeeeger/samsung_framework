.class public final Lcom/android/systemui/keyguard/SecLifecycle$Msg;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final msg:I

.field public final reason:I


# direct methods
.method private constructor <init>(II)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/android/systemui/keyguard/SecLifecycle$Msg;->msg:I

    .line 4
    iput p2, p0, Lcom/android/systemui/keyguard/SecLifecycle$Msg;->reason:I

    return-void
.end method

.method public synthetic constructor <init>(III)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/keyguard/SecLifecycle$Msg;-><init>(II)V

    return-void
.end method
