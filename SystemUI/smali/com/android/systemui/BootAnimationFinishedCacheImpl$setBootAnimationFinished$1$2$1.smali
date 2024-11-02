.class public final Lcom/android/systemui/BootAnimationFinishedCacheImpl$setBootAnimationFinished$1$2$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $it:Lcom/android/systemui/BootAnimationFinishedCache$BootAnimationFinishedListener;


# direct methods
.method public constructor <init>(Lcom/android/systemui/BootAnimationFinishedCache$BootAnimationFinishedListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/BootAnimationFinishedCacheImpl$setBootAnimationFinished$1$2$1;->$it:Lcom/android/systemui/BootAnimationFinishedCache$BootAnimationFinishedListener;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/BootAnimationFinishedCacheImpl$setBootAnimationFinished$1$2$1;->$it:Lcom/android/systemui/BootAnimationFinishedCache$BootAnimationFinishedListener;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/android/systemui/BootAnimationFinishedCache$BootAnimationFinishedListener;->onBootAnimationFinished()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
