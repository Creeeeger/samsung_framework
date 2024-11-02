.class public final Landroidx/picker/model/AppData$GroupAppDataBuilder;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final key:Ljava/lang/String;

.field public label:Ljava/lang/String;

.field public mAppInfoDataList:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroidx/picker/model/appdata/GroupAppData;)V
    .locals 1

    .line 1
    iget-object v0, p1, Landroidx/picker/model/appdata/GroupAppData;->appInfo:Landroidx/picker/model/AppInfo;

    iget-object v0, v0, Landroidx/picker/model/AppInfo;->activityName:Ljava/lang/String;

    .line 2
    invoke-direct {p0, v0}, Landroidx/picker/model/AppData$GroupAppDataBuilder;-><init>(Ljava/lang/String;)V

    .line 3
    iget-object v0, p1, Landroidx/picker/model/appdata/GroupAppData;->group:Ljava/lang/String;

    iput-object v0, p0, Landroidx/picker/model/AppData$GroupAppDataBuilder;->label:Ljava/lang/String;

    .line 4
    iget-object p1, p1, Landroidx/picker/model/appdata/GroupAppData;->appDataList:Ljava/util/List;

    iput-object p1, p0, Landroidx/picker/model/AppData$GroupAppDataBuilder;->mAppInfoDataList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/picker/model/AppData$GroupAppDataBuilder;->key:Ljava/lang/String;

    .line 6
    sget-object p1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 7
    iput-object p1, p0, Landroidx/picker/model/AppData$GroupAppDataBuilder;->mAppInfoDataList:Ljava/util/List;

    return-void
.end method
