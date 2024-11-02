.class public final Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseCancelingSwitchBarViewBinding;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final icon:Landroid/widget/ImageView;

.field public final root:Landroid/widget/LinearLayout;

.field public final switch:Landroidx/appcompat/widget/SwitchCompat;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const v0, 0x7f0a04e4

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/LinearLayout;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseCancelingSwitchBarViewBinding;->root:Landroid/widget/LinearLayout;

    .line 14
    .line 15
    const v0, 0x7f0a04e7

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Landroid/widget/TextView;

    .line 23
    .line 24
    const v0, 0x7f0a04de

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Landroid/widget/ImageView;

    .line 32
    .line 33
    iput-object v0, p0, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseCancelingSwitchBarViewBinding;->icon:Landroid/widget/ImageView;

    .line 34
    .line 35
    const v0, 0x7f0a04e6

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    check-cast p1, Landroidx/appcompat/widget/SwitchCompat;

    .line 43
    .line 44
    iput-object p1, p0, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseCancelingSwitchBarViewBinding;->switch:Landroidx/appcompat/widget/SwitchCompat;

    .line 45
    .line 46
    return-void
.end method
