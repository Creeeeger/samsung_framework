.class public final synthetic Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

.field public final synthetic f$1:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$$ExternalSyntheticLambda0;->f$1:Landroid/content/Intent;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$$ExternalSyntheticLambda0;->f$1:Landroid/content/Intent;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mKgm:Landroid/app/KeyguardManager;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mPendingIntent:Landroid/app/PendingIntent;

    .line 8
    .line 9
    invoke-virtual {v1, v0, p0}, Landroid/app/KeyguardManager;->semSetPendingIntentAfterUnlock(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
