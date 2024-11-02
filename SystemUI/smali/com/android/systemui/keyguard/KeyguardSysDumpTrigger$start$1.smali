.class public final Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$start$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $reason:I

.field public final synthetic $timestamp:J

.field public final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;IJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$start$1;->this$0:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;

    .line 2
    .line 3
    iput p2, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$start$1;->$reason:I

    .line 4
    .line 5
    iput-wide p3, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$start$1;->$timestamp:J

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$start$1;->this$0:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$start$1;->$reason:I

    .line 4
    .line 5
    iget-wide v2, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$start$1;->$timestamp:J

    .line 6
    .line 7
    const-wide/16 v4, 0x0

    .line 8
    .line 9
    cmp-long p0, v2, v4

    .line 10
    .line 11
    if-lez p0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 15
    .line 16
    .line 17
    move-result-wide v2

    .line 18
    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->sendIntent(IJ)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
