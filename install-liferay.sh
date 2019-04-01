BASEPATH=/Volumes/work

echo "unzip liferay tomcat"
mkdir -p $BASEPATH/tomcat
unzip liferay*.zip -d $BASEPATH/tomcat/

echo "cp bimrun1"
cp -r $BASEPATH/tomcat/liferay-portal-6.2-ce-ga6 $BASEPATH/tomcat/liferay-portal-6.2-bimrun1

echo "cp property file"
cp portal-ext.properties $BASEPATH/tomcat/liferay-portal-6.2-bimrun1/

echo "cp log config file"
cp -r META-INF/ $BASEPATH/tomcat/liferay-portal-6.2-bimrun1/tomcat-7.0.62/lib/

echo "cp setenv.sh"
cp setenv.sh $BASEPATH/tomcat/liferay-portal-6.2-bimrun1/tomcat-7.0.62/bin

echo "cp bimrun2"
cp -r $BASEPATH/tomcat/liferay-portal-6.2-ce-ga6 $BASEPATH/tomcat/liferay-portal-6.2-bimrun2

echo "cp property file"
cp portal-ext.properties $BASEPATH/tomcat/liferay-portal-6.2-bimrun2/

echo "cp log config file"
cp -r META-INF/ $BASEPATH/tomcat/liferay-portal-6.2-bimrun2/tomcat-7.0.62/lib/

echo "cp setenv.sh"
cp setenv.sh $BASEPATH/tomcat/liferay-portal-6.2-bimrun2/tomcat-7.0.62/bin