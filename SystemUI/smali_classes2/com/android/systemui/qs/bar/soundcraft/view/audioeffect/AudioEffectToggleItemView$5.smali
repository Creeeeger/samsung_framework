.class public final Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectToggleItemView$5;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectToggleItemView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectToggleItemView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectToggleItemView$5;->this$0:Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectToggleItemView;

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
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectToggleItemView$5;->this$0:Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectToggleItemView;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectToggleItemView;->binding:Lcom/android/systemui/qs/bar/soundcraft/viewbinding/AudioEffectToggleItemViewBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/AudioEffectToggleItemViewBinding;->switch:Landroidx/appcompat/widget/SwitchCompat;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectToggleItemView;->binding:Lcom/android/systemui/qs/bar/soundcraft/viewbinding/AudioEffectToggleItemViewBinding;

    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/AudioEffectToggleItemViewBinding;->switch:Landroidx/appcompat/widget/SwitchCompat;

    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method
