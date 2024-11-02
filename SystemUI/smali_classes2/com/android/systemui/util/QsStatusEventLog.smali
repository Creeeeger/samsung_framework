.class public final Lcom/android/systemui/util/QsStatusEventLog;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final SA_SEVEN_DAYS_IN_MILLISECONDS:Ljava/lang/Long;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public final mHost:Lcom/android/systemui/qs/QSTileHost;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-wide/32 v0, 0x240c8400

    .line 2
    .line 3
    .line 4
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sput-object v0, Lcom/android/systemui/util/QsStatusEventLog;->SA_SEVEN_DAYS_IN_MILLISECONDS:Ljava/lang/Long;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/qs/QSTileHost;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/util/QsStatusEventLog;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/util/QsStatusEventLog;->mHost:Lcom/android/systemui/qs/QSTileHost;

    .line 7
    .line 8
    new-instance p1, Landroid/os/Handler;

    .line 9
    .line 10
    sget-object p2, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    .line 11
    .line 12
    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    check-cast p2, Landroid/os/Looper;

    .line 17
    .line 18
    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lcom/android/systemui/util/QsStatusEventLog;->mHandler:Landroid/os/Handler;

    .line 22
    .line 23
    new-instance p1, Ljava/lang/Thread;

    .line 24
    .line 25
    new-instance p2, Lcom/android/systemui/util/QsStatusEventLog$$ExternalSyntheticLambda0;

    .line 26
    .line 27
    invoke-direct {p2, p0}, Lcom/android/systemui/util/QsStatusEventLog$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/util/QsStatusEventLog;)V

    .line 28
    .line 29
    .line 30
    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 31
    .line 32
    .line 33
    const-string p0, "WeeklySALogging"

    .line 34
    .line 35
    invoke-virtual {p1, p0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 39
    .line 40
    .line 41
    return-void
.end method
