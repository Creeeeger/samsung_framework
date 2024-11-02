.class public final Lcom/android/systemui/qs/bar/soundcraft/viewbinding/AudioEffectBoxViewBinding;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final effectItemList:Landroid/widget/LinearLayout;

.field public final header:Lcom/android/systemui/qs/bar/soundcraft/viewbinding/AudioEffectHeaderViewBinding;

.field public final root:Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectBoxView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const v0, 0x7f0a0a98

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectBoxView;

    .line 12
    .line 13
    iput-object p1, p0, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/AudioEffectBoxViewBinding;->root:Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectBoxView;

    .line 14
    .line 15
    new-instance v0, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/AudioEffectHeaderViewBinding;

    .line 16
    .line 17
    invoke-direct {v0, p1}, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/AudioEffectHeaderViewBinding;-><init>(Landroid/view/View;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/AudioEffectBoxViewBinding;->header:Lcom/android/systemui/qs/bar/soundcraft/viewbinding/AudioEffectHeaderViewBinding;

    .line 21
    .line 22
    const v0, 0x7f0a0a9a

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Landroid/widget/LinearLayout;

    .line 30
    .line 31
    iput-object p1, p0, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/AudioEffectBoxViewBinding;->effectItemList:Landroid/widget/LinearLayout;

    .line 32
    .line 33
    return-void
.end method
