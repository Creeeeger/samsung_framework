.class public final Lcom/android/systemui/knox/DualDarMonitor;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDualDarAuthUtils:Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public mLockoutAttemptDeadline:J

.field public mLockoutAttemptTimeout:J


# direct methods
.method public constructor <init>(Lcom/android/systemui/knox/KnoxStateMonitorImpl;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/android/systemui/knox/DualDarMonitor;->mLockoutAttemptDeadline:J

    .line 7
    .line 8
    iput-wide v0, p0, Lcom/android/systemui/knox/DualDarMonitor;->mLockoutAttemptTimeout:J

    .line 9
    .line 10
    iget-object p1, p1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/android/systemui/knox/DualDarMonitor;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    .line 15
    .line 16
    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/android/systemui/knox/DualDarMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 20
    .line 21
    new-instance v0, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;

    .line 22
    .line 23
    invoke-direct {v0, p1}, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;-><init>(Landroid/content/Context;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/android/systemui/knox/DualDarMonitor;->mDualDarAuthUtils:Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final getInnerAuthUserId(I)I
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/knox/DualDarMonitor;->mDualDarAuthUtils:Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;->getInnerAuthUserId(I)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    const-string v0, "getInnerAuthUserId - userId : "

    .line 8
    .line 9
    const-string v1, ", ret : "

    .line 10
    .line 11
    const-string v2, "DualDarMonitor"

    .line 12
    .line 13
    invoke-static {v0, p1, v1, p0, v2}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return p0
.end method
