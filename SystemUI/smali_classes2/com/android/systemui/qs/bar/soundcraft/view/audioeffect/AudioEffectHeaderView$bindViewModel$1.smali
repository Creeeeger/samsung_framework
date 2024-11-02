.class public final Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectHeaderView$bindViewModel$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectHeaderView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectHeaderView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectHeaderView$bindViewModel$1;->this$0:Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectHeaderView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    const-string/jumbo v0, "update title : "

    .line 4
    .line 5
    .line 6
    const-string v1, "SoundCraft.AudioEffectHeaderView"

    .line 7
    .line 8
    invoke-static {v0, p1, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectHeaderView$bindViewModel$1;->this$0:Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectHeaderView;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectHeaderView;->viewBinding:Lcom/android/systemui/qs/bar/soundcraft/viewbinding/AudioEffectHeaderViewBinding;

    .line 14
    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/AudioEffectHeaderViewBinding;->title:Landroid/widget/TextView;

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method
