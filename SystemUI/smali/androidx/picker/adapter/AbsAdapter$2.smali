.class public final Landroidx/picker/adapter/AbsAdapter$2;
.super Landroidx/picker/features/observable/UpdateMutableState;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic val$data:Landroidx/picker/model/AppInfoDataImpl;


# direct methods
.method public constructor <init>(Landroidx/picker/adapter/AbsAdapter;Landroidx/picker/model/AppInfoData;Landroidx/picker/model/AppInfoDataImpl;)V
    .locals 0

    .line 1
    iput-object p3, p0, Landroidx/picker/adapter/AbsAdapter$2;->val$data:Landroidx/picker/model/AppInfoDataImpl;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroidx/picker/features/observable/UpdateMutableState;-><init>(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getValue()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/picker/adapter/AbsAdapter$2;->val$data:Landroidx/picker/model/AppInfoDataImpl;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/picker/model/AppInfoDataImpl;->icon:Landroid/graphics/drawable/Drawable;

    .line 4
    .line 5
    return-object p0
.end method

.method public final setValue(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/picker/adapter/AbsAdapter$2;->val$data:Landroidx/picker/model/AppInfoDataImpl;

    .line 4
    .line 5
    iput-object p1, p0, Landroidx/picker/model/AppInfoDataImpl;->icon:Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    return-void
.end method
