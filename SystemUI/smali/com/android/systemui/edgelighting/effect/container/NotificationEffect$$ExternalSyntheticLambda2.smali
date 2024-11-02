.class public final synthetic Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$$ExternalSyntheticLambda2;->f$1:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$$ExternalSyntheticLambda2;->f$1:I

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mMorphView:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    .line 6
    .line 7
    iput p0, v0, Lcom/android/systemui/edgelighting/effect/view/AbsToastView;->mScreenWidth:I

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/effect/view/MorphView;->initialize()V

    .line 10
    .line 11
    .line 12
    new-instance p0, Lcom/android/systemui/edgelighting/effect/view/MorphView$$ExternalSyntheticLambda0;

    .line 13
    .line 14
    invoke-direct {p0, v0}, Lcom/android/systemui/edgelighting/effect/view/MorphView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/edgelighting/effect/view/MorphView;)V

    .line 15
    .line 16
    .line 17
    const-wide/16 v1, 0x82

    .line 18
    .line 19
    invoke-virtual {v0, p0, v1, v2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 20
    .line 21
    .line 22
    return-void
.end method
