package testrunner;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.List;

import org.apache.commons.io.FileUtils;
import org.testng.annotations.Test;

import com.intuit.karate.KarateOptions;
import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import com.intuit.karate.driver.WebDriver;
import com.intuit.karate.driver.chrome.Chrome;

import net.masterthought.cucumber.Configuration;
import net.masterthought.cucumber.ReportBuilder;

@KarateOptions(features = "classpath:features")
public class TestParallel {

    @Test
    public void testParallel() throws InterruptedException, IOException {
    Class2 c2 = new Class2();
    // c2.callMe();
Results results = Runner.parallel(getClass(), 5);
TestParallel.generateReport(results.getReportDir());}
@SuppressWarnings("unchecked")
public static void generateReport(String karateOutputPath) {
Collection<File> jsonFiles = FileUtils.listFiles(new File(karateOutputPath), new String[] {"json"}, true);
@SuppressWarnings("rawtypes")
List<String> jsonPaths = new ArrayList(jsonFiles.size());
jsonFiles.forEach(file -> jsonPaths.add(file.getAbsolutePath()));
Date date = new Date();  
SimpleDateFormat     formatter = new SimpleDateFormat("dd-MM-yyyy-hh-mm-ss");  
String strDate= formatter.format(date); 
Configuration config = new Configuration(new File("stageresults/"+strDate), "NBC F2 Stage");
ReportBuilder reportBuilder = new ReportBuilder(jsonPaths, config);
reportBuilder.generateReports();
    }
}

class Class2{
    void callMe() throws InterruptedException, IOException{
       
    Chrome driver = Chrome.start("C:/Program Files/Google/Chrome/Application/Chrome.exe", false);        
    Thread.sleep(15000);

    driver.setUrl("https://d2xo1fslhg7r5w.cloudfront.net/graphql/stage/qa-bonanzaQuery.graphql");
    Thread.sleep(5000);
    File file = new File("src/test/java/queries/query.graphql");

    // if file doesn't exists, then create it
    if (!file.exists()) {
        file.createNewFile();
    }
    String html = driver.text("body > pre");
    FileWriter fileWriter = new FileWriter(file);
    fileWriter.write(html);
    System.out.println(html);     
    fileWriter.close();
    driver.setUrl("https://d2xo1fslhg7r5w.cloudfront.net/graphql/stage/qa-brandSeriesGroupedByCategory.graphql");
    Thread.sleep(2000);
    File file2 = new File("src/test/java/queries/brandSeriesGBCategory.graphql");

    // if file doesn't exists, then create it
    if (!file2.exists()) {
        file2.createNewFile();
    }
    String html2 = driver.text("body > pre");
    FileWriter fileWriter2 = new FileWriter(file2);
    fileWriter2.write(html2);
    System.out.println(html2);     
    fileWriter2.close(); 
    driver.setUrl("https://d2xo1fslhg7r5w.cloudfront.net/graphql/stage/qa-daySchedule.graphql");
    Thread.sleep(2000);
    File file3 = new File("src/test/java/queries/daySchedulePage.graphql");

    // if file doesn't exists, then create it
    if (!file3.exists()) {
        file3.createNewFile();
    }
    String html3 = driver.text("body > pre");
    FileWriter fileWriter3 = new FileWriter(file3);
    fileWriter3.write(html3);
    System.out.println(html3);     
    fileWriter3.close(); 
    driver.setUrl("https://d2xo1fslhg7r5w.cloudfront.net/graphql/stage/qa-endCard.graphql");
    Thread.sleep(2000);
    File file4 = new File("src/test/java/queries/endCard.graphql");
    // if file doesn't exists, then create it
    if (!file4.exists()) {
        file4.createNewFile();
    }
    String html4 = driver.text("body > pre");
    FileWriter fileWriter4 = new FileWriter(file4);
    fileWriter4.write(html4);
    System.out.println(html4);     
    fileWriter4.close(); 
    driver.setUrl("https://d2xo1fslhg7r5w.cloudfront.net/graphql/stage/qa-favoritesShelf.graphql");
    Thread.sleep(2000);
    File file5 = new File("src/test/java/queries/FavoritesShelf.graphql");
    // if file doesn't exists, then create it
    if (!file5.exists()) {
        file5.createNewFile();
    }
    String html5 = driver.text("body > pre");
    FileWriter fileWriter5 = new FileWriter(file5);
    fileWriter5.write(html5);
    System.out.println(html5);     
    fileWriter5.close(); 
    driver.setUrl("https://d2xo1fslhg7r5w.cloudfront.net/graphql/stage/qa-featuredShowsSection.graphql");
    Thread.sleep(2000);
    File file6 = new File("src/test/java/queries/featuredSection.graphql");
    // if file doesn't exists, then create it
    if (!file6.exists()) {
        file6.createNewFile();
    }
    String html6 = driver.text("body > pre");
    FileWriter fileWriter6 = new FileWriter(file6);
    fileWriter6.write(html6);
    System.out.println(html6);     
    fileWriter6.close(); 
    driver.setUrl("https://d2xo1fslhg7r5w.cloudfront.net/graphql/stage/qa-onAirNowQuery.graphql");
    Thread.sleep(2000);
    File file7 = new File("src/test/java/queries/onAirNow.graphql");
    // if file doesn't exists, then create it
    if (!file7.exists()) {
        file7.createNewFile();
    }
    String html7 = driver.text("body > pre");
    FileWriter fileWriter7 = new FileWriter(file7);
    fileWriter7.write(html7);
    System.out.println(html7);     
    fileWriter7.close(); 
    driver.setUrl("https://d2xo1fslhg7r5w.cloudfront.net/graphql/stage/qa-onboardingBrandCategories.graphql");
    Thread.sleep(2000);
    File file8 = new File("src/test/java/queries/onboardingBrandCategories.graphql");
    // if file doesn't exists, then create it
    if (!file8.exists()) {
        file8.createNewFile();
    }
    String html8 = driver.text("body > pre");
    FileWriter fileWriter8 = new FileWriter(file8);
    fileWriter8.write(html8);
    System.out.println(html8);     
    fileWriter8.close(); 
    driver.setUrl("https://d2xo1fslhg7r5w.cloudfront.net/graphql/stage/qa-onboardingCategoryFavorites.graphql");
    Thread.sleep(2000);
    File file9 = new File("src/test/java/queries/onboardingCategoryFavorites.graphql");
    // if file doesn't exists, then create it
    if (!file9.exists()) {
        file9.createNewFile();
    }
    String html9 = driver.text("body > pre");
    FileWriter fileWriter9 = new FileWriter(file9);
    fileWriter9.write(html9);
    System.out.println(html9);     
    fileWriter9.close();
    driver.setUrl("https://d2xo1fslhg7r5w.cloudfront.net/graphql/stage/qa-paginatedComponent.graphql");
    Thread.sleep(2000);
    File file10 = new File("src/test/java/queries/paginatedComponent.graphql");
    // if file doesn't exists, then create it
    if (!file10.exists()) {
        file10.createNewFile();
    }
    String html10 = driver.text("body > pre");
    FileWriter fileWriter10 = new FileWriter(file10);
    fileWriter10.write(html10);
    System.out.println(html10);     
    fileWriter10.close();
    driver.setUrl("https://d2xo1fslhg7r5w.cloudfront.net/graphql/stage/qa-videosSection.graphql");
    Thread.sleep(2000);
    File file11 = new File("src/test/java/queries/videoSection.graphql");
    // if file doesn't exists, then create it
    if (!file11.exists()) {
        file11.createNewFile();
    }
    String html11 = driver.text("body > pre");
    FileWriter fileWriter11 = new FileWriter(file11);
    fileWriter11.write(html11);
    System.out.println(html11);     
    fileWriter11.close();
    driver.setUrl("https://d2xo1fslhg7r5w.cloudfront.net/graphql/stage/qa-recentEpisodes.graphql");
    Thread.sleep(2000);
    File file12 = new File("src/test/java/queries/qa-recentEpisodes.graphql");
    // if file doesn't exists, then create it
    if (!file12.exists()) {
        file12.createNewFile();
    }
    String html12 = driver.text("body > pre");
    FileWriter fileWriter12 = new FileWriter(file12);
    fileWriter12.write(html12);
    System.out.println(html12);     
    fileWriter12.close();
    driver.setUrl("https://d2xo1fslhg7r5w.cloudfront.net/graphql/stage/qa-neuralNetShelf.graphql");
    Thread.sleep(2000);
    File file13 = new File("src/test/java/queries/qa-neuralNetShelf.graphql");
    // if file doesn't exists, then create it
    if (!file13.exists()) {
        file13.createNewFile();
    }
    String html13 = driver.text("body > pre");
    FileWriter fileWriter13 = new FileWriter(file13);
    fileWriter13.write(html13);
    System.out.println(html13); 
    fileWriter13.close();
    driver.quit();
}
}