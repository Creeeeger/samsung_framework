.class public final Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils$AppLabelComparator;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils;


# direct methods
.method private constructor <init>(Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils$AppLabelComparator;->this$0:Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils$AppLabelComparator;-><init>(Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils;)V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    .line 1
    check-cast p1, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageInfo;

    .line 2
    .line 3
    check-cast p2, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageInfo;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils$AppLabelComparator;->this$0:Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils;

    .line 6
    .line 7
    iget-object v1, p1, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageInfo;->mPackageName:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils;->getApplicationLabel(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object p0, p0, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils$AppLabelComparator;->this$0:Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils;

    .line 14
    .line 15
    iget-object v1, p2, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageInfo;->mPackageName:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {p0, v1}, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils;->getApplicationLabel(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const/4 v1, 0x0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    if-eqz p0, :cond_1

    .line 25
    .line 26
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-static {v2}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v2, v1}, Ljava/text/Collator;->setStrength(I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, v0, p0}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    if-nez p0, :cond_0

    .line 42
    .line 43
    iget-object p0, p1, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageInfo;->mPackageName:Ljava/lang/String;

    .line 44
    .line 45
    iget-object v0, p2, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageInfo;->mPackageName:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    if-nez p0, :cond_0

    .line 52
    .line 53
    iget p0, p1, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageInfo;->mProfileId:I

    .line 54
    .line 55
    iget p1, p2, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageInfo;->mProfileId:I

    .line 56
    .line 57
    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    :cond_0
    move v1, p0

    .line 62
    :cond_1
    return v1
.end method
