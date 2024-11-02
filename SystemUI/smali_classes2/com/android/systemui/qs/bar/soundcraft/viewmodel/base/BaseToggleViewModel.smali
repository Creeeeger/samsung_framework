.class public abstract Lcom/android/systemui/qs/bar/soundcraft/viewmodel/base/BaseToggleViewModel;
.super Lcom/android/systemui/qs/bar/soundcraft/viewmodel/base/BaseViewModel;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final icon:Landroidx/lifecycle/MutableLiveData;

.field public final isSelected:Landroidx/lifecycle/MutableLiveData;

.field public final name:Landroidx/lifecycle/MutableLiveData;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/base/BaseViewModel;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 5
    .line 6
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/base/BaseToggleViewModel;->name:Landroidx/lifecycle/MutableLiveData;

    .line 10
    .line 11
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 12
    .line 13
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/base/BaseToggleViewModel;->isSelected:Landroidx/lifecycle/MutableLiveData;

    .line 17
    .line 18
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 19
    .line 20
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 21
    .line 22
    .line 23
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 24
    .line 25
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/base/BaseToggleViewModel;->icon:Landroidx/lifecycle/MutableLiveData;

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public getIcon()Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/base/BaseToggleViewModel;->icon:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object p0
.end method

.method public abstract onClick()V
.end method
