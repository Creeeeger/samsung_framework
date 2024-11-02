.class public abstract Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback$PushServiceCallback;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "KnoxPushServiceCallback"


# instance fields
.field public acb:Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p0, p0, Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback;->acb:Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getKnoxPushServiceCb()Lcom/samsung/android/knox/kpm/IKnoxPushServiceCallback;
    .locals 2

    .line 1
    new-instance v0, Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback$PushServiceCallback;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback$PushServiceCallback;-><init>(Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback;I)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public abstract onRegistrationFinished(Lcom/samsung/android/knox/kpm/KnoxPushServiceResult;)V
.end method

.method public abstract onRegistrationStatus(Lcom/samsung/android/knox/kpm/KnoxPushServiceResult;)V
.end method

.method public abstract onUnRegistrationFinished(Lcom/samsung/android/knox/kpm/KnoxPushServiceResult;)V
.end method
