.class public final Lcom/android/systemui/keyguard/animator/FullScreenViewController$longPressCallback$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyguard/animator/FullScreenViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/animator/FullScreenViewController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/keyguard/animator/FullScreenViewController$longPressCallback$1;->this$0:Lcom/android/systemui/keyguard/animator/FullScreenViewController;

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
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/FullScreenViewController$longPressCallback$1;->this$0:Lcom/android/systemui/keyguard/animator/FullScreenViewController;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/animator/FullScreenViewController;->setFullScreenMode$frameworks__base__packages__SystemUI__android_common__SystemUI_core(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
