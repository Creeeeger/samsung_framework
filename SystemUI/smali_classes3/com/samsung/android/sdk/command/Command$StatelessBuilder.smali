.class public final Lcom/samsung/android/sdk/command/Command$StatelessBuilder;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mCategory:Ljava/lang/String;

.field public final mClassification:Ljava/lang/String;

.field public final mCommandId:Ljava/lang/String;

.field public final mCustomConfigComponent:Ljava/lang/String;

.field public final mForTarget:Ljava/lang/String;

.field public final mIconResId:I

.field public final mLaunchIntent:Landroid/app/PendingIntent;

.field public final mPackageName:Ljava/lang/String;

.field public mStatus:I

.field public final mStatusCode:Ljava/lang/String;

.field public final mStatusText:Ljava/lang/String;

.field public final mSubCategory:Ljava/lang/String;

.field public final mSubTitle:Ljava/lang/String;

.field public mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/command/Command;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iget-object v0, p1, Lcom/samsung/android/sdk/command/Command;->mCommandId:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/samsung/android/sdk/command/Command$StatelessBuilder;->mCommandId:Ljava/lang/String;

    .line 6
    iget-object v0, p1, Lcom/samsung/android/sdk/command/Command;->mTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/command/Command$StatelessBuilder;->mTitle:Ljava/lang/String;

    .line 7
    iget-object v0, p1, Lcom/samsung/android/sdk/command/Command;->mSubTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/command/Command$StatelessBuilder;->mSubTitle:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Lcom/samsung/android/sdk/command/Command;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/command/Command$StatelessBuilder;->mPackageName:Ljava/lang/String;

    .line 9
    iget-object v0, p1, Lcom/samsung/android/sdk/command/Command;->mForTarget:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/command/Command$StatelessBuilder;->mForTarget:Ljava/lang/String;

    .line 10
    iget-object v0, p1, Lcom/samsung/android/sdk/command/Command;->mClassification:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/command/Command$StatelessBuilder;->mClassification:Ljava/lang/String;

    .line 11
    iget-object v0, p1, Lcom/samsung/android/sdk/command/Command;->mCategory:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/command/Command$StatelessBuilder;->mCategory:Ljava/lang/String;

    .line 12
    iget-object v0, p1, Lcom/samsung/android/sdk/command/Command;->mSubCategory:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/command/Command$StatelessBuilder;->mSubCategory:Ljava/lang/String;

    .line 13
    iget-object v0, p1, Lcom/samsung/android/sdk/command/Command;->mLaunchIntent:Landroid/app/PendingIntent;

    iput-object v0, p0, Lcom/samsung/android/sdk/command/Command$StatelessBuilder;->mLaunchIntent:Landroid/app/PendingIntent;

    .line 14
    iget-object v0, p1, Lcom/samsung/android/sdk/command/Command;->mCustomConfigComponent:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/command/Command$StatelessBuilder;->mCustomConfigComponent:Ljava/lang/String;

    .line 15
    iget v0, p1, Lcom/samsung/android/sdk/command/Command;->mStatus:I

    iput v0, p0, Lcom/samsung/android/sdk/command/Command$StatelessBuilder;->mStatus:I

    .line 16
    iget-object v0, p1, Lcom/samsung/android/sdk/command/Command;->mStatusText:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/command/Command$StatelessBuilder;->mStatusText:Ljava/lang/String;

    .line 17
    iget-object v0, p1, Lcom/samsung/android/sdk/command/Command;->mStatusCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/command/Command$StatelessBuilder;->mStatusCode:Ljava/lang/String;

    .line 18
    iget p1, p1, Lcom/samsung/android/sdk/command/Command;->mIconResId:I

    iput p1, p0, Lcom/samsung/android/sdk/command/Command$StatelessBuilder;->mIconResId:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/samsung/android/sdk/command/Command$StatelessBuilder;->mCommandId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final build()Lcom/samsung/android/sdk/command/Command;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v18, Lcom/samsung/android/sdk/command/Command;

    .line 4
    .line 5
    move-object/from16 v1, v18

    .line 6
    .line 7
    iget-object v2, v0, Lcom/samsung/android/sdk/command/Command$StatelessBuilder;->mCommandId:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v3, v0, Lcom/samsung/android/sdk/command/Command$StatelessBuilder;->mTitle:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v4, v0, Lcom/samsung/android/sdk/command/Command$StatelessBuilder;->mSubTitle:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v5, v0, Lcom/samsung/android/sdk/command/Command$StatelessBuilder;->mPackageName:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v6, v0, Lcom/samsung/android/sdk/command/Command$StatelessBuilder;->mForTarget:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v7, v0, Lcom/samsung/android/sdk/command/Command$StatelessBuilder;->mClassification:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v8, v0, Lcom/samsung/android/sdk/command/Command$StatelessBuilder;->mCategory:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v9, v0, Lcom/samsung/android/sdk/command/Command$StatelessBuilder;->mSubCategory:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v10, v0, Lcom/samsung/android/sdk/command/Command$StatelessBuilder;->mLaunchIntent:Landroid/app/PendingIntent;

    .line 24
    .line 25
    iget-object v11, v0, Lcom/samsung/android/sdk/command/Command$StatelessBuilder;->mCustomConfigComponent:Ljava/lang/String;

    .line 26
    .line 27
    sget-object v12, Lcom/samsung/android/sdk/command/template/CommandTemplate;->NO_TEMPLATE:Lcom/samsung/android/sdk/command/template/CommandTemplate$1;

    .line 28
    .line 29
    iget v13, v0, Lcom/samsung/android/sdk/command/Command$StatelessBuilder;->mStatus:I

    .line 30
    .line 31
    iget-object v14, v0, Lcom/samsung/android/sdk/command/Command$StatelessBuilder;->mStatusText:Ljava/lang/String;

    .line 32
    .line 33
    iget-object v15, v0, Lcom/samsung/android/sdk/command/Command$StatelessBuilder;->mStatusCode:Ljava/lang/String;

    .line 34
    .line 35
    iget v0, v0, Lcom/samsung/android/sdk/command/Command$StatelessBuilder;->mIconResId:I

    .line 36
    .line 37
    move/from16 v16, v0

    .line 38
    .line 39
    const/16 v17, 0x0

    .line 40
    .line 41
    invoke-direct/range {v1 .. v17}, Lcom/samsung/android/sdk/command/Command;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;Lcom/samsung/android/sdk/command/template/CommandTemplate;ILjava/lang/String;Ljava/lang/String;ILcom/samsung/android/sdk/command/Command$1;)V

    .line 42
    .line 43
    .line 44
    return-object v18
.end method
