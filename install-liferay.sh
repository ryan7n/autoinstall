TOMCAT_HOME=~/tomcat
echo "unzip liferay tomcat"
mkdir -p $TOMCAT_HOME
unzip liferay*.zip -d $TOMCAT_HOME/

echo "cp bimrun1"
cp -r $TOMCAT_HOME/liferay-portal-6.2-ce-ga6 $TOMCAT_HOME/liferay-portal-6.2-bimrun1

echo "cp property file"
cp portal-ext.properties $TOMCAT_HOME/liferay-portal-6.2-bimrun1/

echo "cp log config file"
cp -r META-INF/ $TOMCAT_HOME/liferay-portal-6.2-bimrun1/tomcat-7.0.62/lib/

echo "cp setenv.sh"
cp setenv.sh $TOMCAT_HOME/liferay-portal-6.2-bimrun1/tomcat-7.0.62/bin

echo "cp bimrun2"
cp -r $TOMCAT_HOME/liferay-portal-6.2-ce-ga6 $TOMCAT_HOME/liferay-portal-6.2-bimrun2

echo "cp property file"
cp portal-ext.properties $TOMCAT_HOME/liferay-portal-6.2-bimrun2/

echo "cp log config file"
cp -r META-INF/ $TOMCAT_HOME/liferay-portal-6.2-bimrun2/tomcat-7.0.62/lib/

echo "cp setenv.sh"
cp setenv.sh $TOMCAT_HOME/liferay-portal-6.2-bimrun2/tomcat-7.0.62/bin