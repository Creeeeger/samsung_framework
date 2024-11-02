.class public final Landroidx/picker/model/AppData$ListAppDataBuilder;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field private final appInfo:Landroidx/picker/model/AppInfo;

.field private extraLabel:Ljava/lang/String;

.field private icon:Landroid/graphics/drawable/Drawable;

.field private isValueInSubLabel:Z

.field private label:Ljava/lang/String;

.field private subIcon:Landroid/graphics/drawable/Drawable;

.field private subLabel:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/picker/model/AppInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/picker/model/AppData$ListAppDataBuilder;->appInfo:Landroidx/picker/model/AppInfo;

    return-void
.end method

.method public constructor <init>(Landroidx/picker/model/AppInfoData;)V
    .locals 2

    .line 3
    invoke-interface {p1}, Landroidx/picker/model/AppData;->getAppInfo()Landroidx/picker/model/AppInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/picker/model/AppData$ListAppDataBuilder;-><init>(Landroidx/picker/model/AppInfo;)V

    .line 4
    invoke-interface {p1}, Landroidx/picker/model/AppInfoData;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/picker/model/AppData$ListAppDataBuilder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroidx/picker/model/AppData$ListAppDataBuilder;

    .line 5
    invoke-interface {p1}, Landroidx/picker/model/AppInfoData;->getSubIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/picker/model/AppData$ListAppDataBuilder;->setSubIcon(Landroid/graphics/drawable/Drawable;)Landroidx/picker/model/AppData$ListAppDataBuilder;

    .line 6
    invoke-interface {p1}, Landroidx/picker/model/AppInfoData;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/picker/model/AppData$ListAppDataBuilder;->setLabel(Ljava/lang/String;)Landroidx/picker/model/AppData$ListAppDataBuilder;

    .line 7
    invoke-interface {p1}, Landroidx/picker/model/AppInfoData;->getSubLabel()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Landroidx/picker/model/AppInfoData;->isValueInSubLabel()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroidx/picker/model/AppData$ListAppDataBuilder;->setSubLabel(Ljava/lang/String;Z)Landroidx/picker/model/AppData$ListAppDataBuilder;

    .line 8
    invoke-interface {p1}, Landroidx/picker/model/AppInfoData;->getExtraLabel()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/picker/model/AppData$ListAppDataBuilder;->setExtraLabel(Ljava/lang/String;)Landroidx/picker/model/AppData$ListAppDataBuilder;

    return-void
.end method

.method public static synthetic setSubLabel$default(Landroidx/picker/model/AppData$ListAppDataBuilder;Ljava/lang/String;ZILjava/lang/Object;)Landroidx/picker/model/AppData$ListAppDataBuilder;
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/picker/model/AppData$ListAppDataBuilder;->setSubLabel(Ljava/lang/String;Z)Landroidx/picker/model/AppData$ListAppDataBuilder;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method


# virtual methods
.method public bridge synthetic build()Landroidx/picker/model/AppData;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/picker/model/AppData$ListAppDataBuilder;->build()Landroidx/picker/model/AppInfoData;

    move-result-object p0

    return-object p0
.end method

.method public build()Landroidx/picker/model/AppInfoData;
    .locals 15

    .line 2
    new-instance v14, Landroidx/picker/model/AppInfoDataImpl;

    .line 3
    iget-object v1, p0, Landroidx/picker/model/AppData$ListAppDataBuilder;->appInfo:Landroidx/picker/model/AppInfo;

    const/4 v2, 0x0

    .line 4
    iget-object v3, p0, Landroidx/picker/model/AppData$ListAppDataBuilder;->icon:Landroid/graphics/drawable/Drawable;

    .line 5
    iget-object v4, p0, Landroidx/picker/model/AppData$ListAppDataBuilder;->subIcon:Landroid/graphics/drawable/Drawable;

    .line 6
    iget-object v5, p0, Landroidx/picker/model/AppData$ListAppDataBuilder;->label:Ljava/lang/String;

    .line 7
    iget-object v6, p0, Landroidx/picker/model/AppData$ListAppDataBuilder;->subLabel:Ljava/lang/String;

    .line 8
    iget-object v7, p0, Landroidx/picker/model/AppData$ListAppDataBuilder;->extraLabel:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 9
    iget-boolean v11, p0, Landroidx/picker/model/AppData$ListAppDataBuilder;->isValueInSubLabel:Z

    const/16 v12, 0x380

    const/4 v13, 0x0

    move-object v0, v14

    .line 10
    invoke-direct/range {v0 .. v13}, Landroidx/picker/model/AppInfoDataImpl;-><init>(Landroidx/picker/model/AppInfo;ILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v14
.end method

.method public final getAppInfo()Landroidx/picker/model/AppInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/picker/model/AppData$ListAppDataBuilder;->appInfo:Landroidx/picker/model/AppInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setExtraLabel(Ljava/lang/String;)Landroidx/picker/model/AppData$ListAppDataBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/picker/model/AppData$ListAppDataBuilder;->extraLabel:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setIcon(Landroid/graphics/drawable/Drawable;)Landroidx/picker/model/AppData$ListAppDataBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/picker/model/AppData$ListAppDataBuilder;->icon:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setLabel(Ljava/lang/String;)Landroidx/picker/model/AppData$ListAppDataBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/picker/model/AppData$ListAppDataBuilder;->label:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setSubIcon(Landroid/graphics/drawable/Drawable;)Landroidx/picker/model/AppData$ListAppDataBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/picker/model/AppData$ListAppDataBuilder;->subIcon:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setSubLabel(Ljava/lang/String;)Landroidx/picker/model/AppData$ListAppDataBuilder;
    .locals 3

    .line 1
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Landroidx/picker/model/AppData$ListAppDataBuilder;->setSubLabel$default(Landroidx/picker/model/AppData$ListAppDataBuilder;Ljava/lang/String;ZILjava/lang/Object;)Landroidx/picker/model/AppData$ListAppDataBuilder;

    move-result-object p0

    return-object p0
.end method

.method public final setSubLabel(Ljava/lang/String;Z)Landroidx/picker/model/AppData$ListAppDataBuilder;
    .locals 0

    .line 2
    iput-object p1, p0, Landroidx/picker/model/AppData$ListAppDataBuilder;->subLabel:Ljava/lang/String;

    .line 3
    iput-boolean p2, p0, Landroidx/picker/model/AppData$ListAppDataBuilder;->isValueInSubLabel:Z

    return-object p0
.end method
